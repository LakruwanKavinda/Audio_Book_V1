from django.db import models


class Audiobook(models.Model):
    title = models.CharField(max_length=100)
    author = models.CharField(max_length=100)
    pdf_file = models.FileField(upload_to='pdfs/')

    def __str__(self):
        return self.title
