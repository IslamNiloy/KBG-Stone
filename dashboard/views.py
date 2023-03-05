
from django.shortcuts import render,redirect
from django.http import HttpResponse
from django.template import loader
from dashboard.models import Appointment,PopUpSubmission
from dashboard.models import ContactForm
from django.utils import timezone
from django.core.mail import send_mail


# Create your views here.
def home_page(request):
     return render(request,'index.html')

def blog_page(request):
   return render(request,'blog.html')

def contactus_page(request):
   return render(request,'contactus.html')

def appointment_page(request):
   return render(request,'appointment.html')

def all_product_page(request):
    return render(request,'product.html')

def product_page1(request):
    return render(request,'Product_Calacatta_Carrara.html')

def product_page2(request):
    return render(request,'Product_Calacatta-Oro.html')

def product_page3(request):
    return render(request,'Product_crema_penta_light.html')

def product_page4(request):
    return render(request,'Product_Crema_penta-dark.html')

def product_page5(request):
    return render(request,'Product_Emperador Dark.html')

def product_page6(request):
    return render(request,'Product_mugla_white.html')

def product_page7(request):
    return render(request,'Product_Panda Book Match.html')

def product_page8(request):
    return render(request,'Product_Zebrino.html')



# Appointment Form

def appointment_form(request):
    if request.method == 'POST':
        name = request.POST.get('name')
        email = request.POST.get('email')
        phone = request.POST.get('phone')
        appointment_date = request.POST.get('return')
        appointment_time = request.POST.get('Time')
      

        appointment = Appointment(
            name=name,
            email=email,
            phone=phone,
            appointment_date=appointment_date,
            appointment_time=appointment_time,
        )
        appointment.save()

         # send confirmation email to user
        subject = 'Appointment Request Confirmation'
        message = f'Hi {name},\n\nThank you for booking an appointment. Your appointment is scheduled for {appointment_date} at {appointment_time}. We look forward to see you.\n\nBest regards,\nThe Appointment Team\nParkway Technology '
        from_email = 'niloy.islam@kbgbd.com.au'  # replace with your email address
        recipient_list =[email,]  # replace with the email address of the user who submitted the form
        send_mail(subject, message, from_email, recipient_list, fail_silently=False)

        return render(request, 'success.html', {'message': 'Your form has been submitted successfully!'})

    return render(request, 'appointment.html')



# Contact Form
def contact(request):
    if request.method == 'POST':
        # Get the data from the form submission
        name = request.POST.get('name')
        email = request.POST.get('email')
        subject = request.POST.get('subject')
        message = request.POST.get('message')
        
        # Create a new ContactForm object with the data
        contact_form = ContactForm(name=name, email=email, subject=subject, message=message)
        
        # Save the object to the database
        contact_form.save()
        
        # Return a success message to the user
          # send confirmation email to user
        subject = 'Appointment Request Confirmation'
        message = f'Hi {name},\n\nThank you for contacting with us. We will Contact with you soon.\n\nBest regards,\nThe Appointment Team\nParkway Technology '
        from_email = 'parkwaykbg@gmail.com'  # replace with your email address
        recipient_list =[email,]  # replace with the email address of the user who submitted the form
        send_mail(subject, message, from_email, recipient_list, fail_silently=False)

        return render(request, 'success.html', {'message': 'Your form has been submitted successfully!'})

        
    else:
        return render(request, 'index.html')




#popup form

def popup(request):
    if request.method == 'POST':
        # Handle form submission
        name = request.POST.get('name')
        number = request.POST.get('number')
        email = request.POST.get('email')
        postcode = request.POST.get('postcode')

        # Save form submission to database
        submission = PopUpSubmission(name=name, number=number, email=email, postcode=postcode)
        submission.save()

        # Return success response
        return HttpResponse('Form submitted successfully')
    else:
        # Render PopUp template
        return render(request, 'index.html')

