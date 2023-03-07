from django.contrib import admin
from .models import Appointment,PopUpSubmission,Product
from .models import ContactForm
# Register your models here.



admin.site.register(Appointment)
admin.site.register(ContactForm)
admin.site.register(PopUpSubmission)
admin.site.register(Product)



