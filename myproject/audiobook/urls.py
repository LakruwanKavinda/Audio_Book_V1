from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import AudiobookViewSet

router = DefaultRouter()
router.register(r'audiobooks', AudiobookViewSet)

urlpatterns = [
    path('', include(router.urls)),
]
