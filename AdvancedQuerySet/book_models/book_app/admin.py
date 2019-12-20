from django.contrib import admin

from book_app.models import *

# Register your models here.


admin.site.register([Book,Author,Category])
