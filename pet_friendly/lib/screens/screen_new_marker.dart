import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:petfriendly/google_maps/NewMarkers.dart';

class ScreenNewMarker extends StatelessWidget {
  TextEditingController _controllerLng = TextEditingController();
  TextEditingController _controllerLat = TextEditingController();
  TextEditingController _controllerTitle = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adicionar novo marcador"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
              _itemTextField("Lat", TextInputType.number,_controllerLat ),
              Padding(
                padding: const EdgeInsets.only(top:16.0, bottom: 16.0),
                child: _itemTextField("LNG", TextInputType.number, _controllerLng),
              ),
              _itemTextField("Titulo do marcador", TextInputType.text,_controllerTitle),
            RaisedButton(
              child: Text("Salvar marcador"),
              onPressed: (){
                NewMarker newmarker = NewMarker(this._controllerTitle.text, LatLng(double.parse(_controllerLat.text), double.parse(_controllerLng.text)));
                Navigator.pop(context,newmarker);
              },
            )

          ],
        ),
      ),
    );
  }
}

class _itemTextField extends StatelessWidget {
   String _label;
   TextInputType _type;
   TextEditingController _TypeController;

  _itemTextField(this._label, this._type, this._TypeController);
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: this._label,
      ),
      keyboardType: this._type,
      controller: this._TypeController,
    );
  }

}

