
from django.contrib import admin
from django.urls import include, path

from dashboard.views import appointment_form, product_detail, product_list
from dashboard.views import contact
from dashboard import views


urlpatterns = [
    path('admin/', admin.site.urls),
    path('',views.home_page,name='index'),
    path('index',views.home_page,name='home'),
    path('gallery',views.blog_page,name='blog'),
    path('contactus',views.contactus_page,name='contactus'),
    path('appointment',views.appointment_page,name='appointment'),


    path('allproduct',views.all_product_page,name='allproduct'),
    path('Product_Calacatta_Carrara',views.product_page1,name='Product_Calacatta_Carrara'),
    path('Product_Calacatta-Oro',views.product_page2,name='Product_Calacatta-Oro'),
    path('Product_crema_penta_light',views.product_page3,name='Product_crema_penta_light'),
    path('Product_Crema_penta-dark',views.product_page4,name='Product_Crema_penta-dark'),
    path('Product_Emperador Dark',views.product_page5,name='Product_Emperador Dark'),
    path('Product_mugla_white',views.product_page6,name='Product_mugla_white'),
    path('Product_Panda Book Match',views.product_page7,name='Product_Panda Book Match'),
    path('Product_Zebrino',views.product_page8,name='Product_Zebrino'),
    path('all-products/', views.all_products, name='all_products'),
    
    path('products/',views.product_list, name='product_list'),
    path('products/<int:product_id>/', views.product_detail, name='product_detail'),

    #form for get data
    path('save',views.appointment_form,name='save_appointment'),
    path('contact',views.contact,name='contact'),
    path('popup',views.popup,name='popup'),
    
    
]
