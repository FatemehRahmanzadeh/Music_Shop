from django.contrib import admin
from django.contrib.auth.models import User
from accounts.models import CustomerProxy


@admin.register(CustomerProxy)
class CustomerAdmin(admin.ModelAdmin):
    fields = ('username',)

    def get_queryset(self, request):
        return User.objects.filter(is_staff=False)
