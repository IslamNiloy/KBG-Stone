from django.db import models
from django.utils import timezone

# Create your models here.

# Appoitment Form
class Appointment(models.Model):
    name = models.CharField(max_length=100)
    email = models.EmailField()
    phone = models.CharField(max_length=20)
    appointment_date =models.DateField(default=timezone.now)
    appointment_time = models.CharField(max_length=10)

    def __str__(self):
        return self.name
    

#Contact Form
class ContactForm(models.Model):
    name = models.CharField(max_length=100)
    email = models.EmailField()
    subject = models.CharField(max_length=100)
    message = models.TextField()

    def __str__(self):
        return self.name


#PopUp Form
class PopUpSubmission(models.Model):
    name = models.CharField(max_length=255)
    number = models.CharField(max_length=20)
    email = models.EmailField(max_length=255, blank=True)
    postcode = models.CharField(max_length=10, blank=True)
    timestamp = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name
    

#Product Form
class Product(models.Model):
    name = models.CharField(max_length=255)
    description = models.TextField()
    image = models.ImageField(upload_to='products/images/')
    category = models.CharField(max_length=255)

    def __str__(self):
        return self.name
