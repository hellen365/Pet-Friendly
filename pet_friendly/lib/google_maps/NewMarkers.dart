import 'package:google_maps_flutter/google_maps_flutter.dart';
class NewMarker{
 String local;
 LatLng latlng;
 NewMarker(this.local, this.latlng);

 Marker newMarker(){
  return Marker(
      markerId: MarkerId(local),
      position: latlng,
      infoWindow: InfoWindow(title: local)
  );
 }
}

