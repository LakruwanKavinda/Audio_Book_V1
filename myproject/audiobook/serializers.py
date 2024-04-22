from rest_framework import serializers
from .models import Audiobook


class AudiobookSerializer(serializers.ModelSerializer):
    class Meta:
        model = Audiobook
        fields = ['id', 'title', 'author', 'pdf_file']
