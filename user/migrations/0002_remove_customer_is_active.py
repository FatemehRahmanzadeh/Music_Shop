# Generated by Django 3.1.13 on 2021-07-15 06:47

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('user', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='customer',
            name='is_active',
        ),
    ]
