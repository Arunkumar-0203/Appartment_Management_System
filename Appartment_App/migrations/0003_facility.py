# Generated by Django 4.0.3 on 2022-05-15 08:19

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Appartment_App', '0002_alter_add_appartment_status'),
    ]

    operations = [
        migrations.CreateModel(
            name='facility',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Facility', models.CharField(max_length=100, null=True)),
                ('status', models.CharField(max_length=100, null=True)),
            ],
        ),
    ]
