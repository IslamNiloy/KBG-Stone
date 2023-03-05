from django.db import models
from django.utils import timezone

# Create your models here.


class Appointment(models.Model):
    name = models.CharField(max_length=100)
    email = models.EmailField()
    phone = models.CharField(max_length=20)
    appointment_date =models.DateField(default=timezone.now)
    appointment_time = models.CharField(max_length=10)

    def __str__(self):
        return self.name
    


class ContactForm(models.Model):
    name = models.CharField(max_length=100)
    email = models.EmailField()
    subject = models.CharField(max_length=100)
    message = models.TextField()

    def __str__(self):
        return self.name



# class Popup(models.Model):
#     name = models.CharField(max_length=255)
#     number = models.CharField(max_length=20)
#     email = models.EmailField(max_length=255, blank=True, null=True)
#     postcode = models.CharField(max_length=10, blank=True, null=True)

#     def __str__(self):
#         return self.name

