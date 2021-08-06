from rest_framework import routers
from product.views import TrackView

router = routers.DefaultRouter()
router.register('tracks', TrackView, basename='tracks')
urlpatterns = router.urls
