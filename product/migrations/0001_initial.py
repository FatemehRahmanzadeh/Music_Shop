# Generated by Django 3.1.13 on 2021-07-15 06:24

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Album',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=160)),
            ],
        ),
        migrations.CreateModel(
            name='Artist',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=120)),
                ('is_active', models.BooleanField(default=True)),
            ],
        ),
        migrations.CreateModel(
            name='Genre',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=120)),
            ],
        ),
        migrations.CreateModel(
            name='MediaType',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=120)),
            ],
        ),
        migrations.CreateModel(
            name='Track',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=200)),
                ('compose', models.CharField(blank=True, max_length=200, null=True)),
                ('milli_seconds', models.IntegerField()),
                ('bytes', models.IntegerField()),
                ('unit_price', models.IntegerField()),
                ('album_id', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='product.album')),
                ('genre_id', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='product.genre')),
                ('media_type_id', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='product.mediatype')),
            ],
        ),
        migrations.AddField(
            model_name='album',
            name='artist_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='product.artist'),
        ),
    ]
