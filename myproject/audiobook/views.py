from rest_framework import viewsets
from .models import Audiobook
from .serializers import AudiobookSerializer


class AudiobookViewSet(viewsets.ModelViewSet):
    queryset = Audiobook.objects.all()
    serializer_class = AudiobookSerializer
