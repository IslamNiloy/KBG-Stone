
from django.shortcuts import render,redirect
from django.http import HttpResponse
from django.template import loader
from dashboard.models import Appointment,PopUpSubmission,ContactForm,Product
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
        message = f'Dear {name},\n\nThank you for booking an appointment with us! We are looking forward to meeting with you on {appointment_date} at {appointment_time}for your scheduled appointment.\n\nWe wanted to confirm the details of your appointment:\nAppointment Date:  {appointment_date}\nAppointment Time:  {appointment_time}\nDuration: 1 Hour\nLocation:Unit 6, 1003-1009 Canley Vale Road, Wetherill Park, NSW, Australia 2164\n\nPlease note that if you need to cancel or reschedule your appointment, we kindly ask that you provide us with at least 24 hours notice. This allows us to offer your appointment slot to other clients who may be on a waiting list.\nIf you have any questions or concerns regarding your appointment, please do not hesitate to contact us at [Mobile: +61 451 210 406]. We are always happy to help!\nThank you for choosing our business for your needs. We look forward to providing you with exceptional service and a great experience.\n\nBest regards,\nKBG STONE'
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
        message = f'Hi {name},\n\nThank you for contacting with us.We will Contact with you soon.\n\nBest regards,\nThe Appointment Team\nParkway Technology '
        


        from_email = 'niloy.islam@kbgbd.com.au'  # replace with your email address
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
    #     return HttpResponse('Form submitted successfully')
    # else:
        # Render PopUp template
        return render(request, 'index.html')
    
#All Product 
def all_products(request):
    products = Product.objects.all()
    context = {
        'products': products
    }
    return render(request, 'all_products.html', context)


