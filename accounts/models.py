from django.contrib.auth.models import User
from django.db import models


class CustomerProxy(User):
    class Meta:
        proxy = True
