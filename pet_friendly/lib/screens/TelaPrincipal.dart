import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:petfriendly/google_maps/NewMarkers.dart';
import 'package:petfriendly/screens/screen_new_marker.dart';

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal>  {
  GoogleMapController mapController;
  Map<String, Marker> markers = Map();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pet Friendly"),
        centerTitle: true,
      ),
      body:GoogleMap(
        mapType: MapType.normal,
        markers: Set<Marker>.of(markers.values),
        initialCameraPosition: CameraPosition(
          target: LatLng( 0, 0),
          zoom: 0,
        )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async{
           final NewMarker newmarker = await Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScreenNewMarker()));
           setState(() {
             markers[newmarker.local] = newmarker.newMarker();
           });
        },
      ),
    );
  }
}

