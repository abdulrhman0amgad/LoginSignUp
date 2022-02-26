
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class service_contacts extends StatefulWidget {
  service_contacts({Key? key}) : super(key: key);
  @override
  _service_contactsState createState() => _service_contactsState();
}

class _service_contactsState extends State<service_contacts> {
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("service contacts" ),),
      body:Column(
        children: [
          Container(
            child:  GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },),
               height: 500,
               width: 400,
          ),
          ElevatedButton(
            child: Text("show lat and long "),
            onPressed:  ()async{},
          ),
        ],
      )

    ); 
  }
}

//AIzaSyADNiUOKxGbdZAQyrmKLa_lXtI_Ur7jcMI