from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.viewsets import GenericViewSet

from product.models import Track
from product.serializers import TrackSerializer


class TrackView(GenericViewSet):
    @action(methods=['GET'], detail=False, url_name='unit1', url_path='unit1')
    def unit1_track(self, request, *args, **kwargs):
        qs = Track.objects.filter(unit_price__gt=1)
        qs_ser = TrackSerializer(qs, many=True)
        return Response(data={'result': qs_ser.data}, status=200)

    @action(methods=['GET'], detail=False, url_name='all', url_path='all')
    def all_tracks(self, request, *args, **kwargs):
        qs = Track.objects.all()
        qs_ser = TrackSerializer(qs, many=True)
        return Response(data={'result': qs_ser.data}, status=200)
