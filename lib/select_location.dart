import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_places_flutter/google_places_flutter.dart';
import 'package:google_places_flutter/model/prediction.dart';
import 'package:http/http.dart' as http;

class SelectLocation extends StatefulWidget {
  const SelectLocation({Key? key});

  @override
  State<SelectLocation> createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  static final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(37.427961335, -122.08574965),
    zoom: 4,
  );

  GoogleMapController? _mapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (controller) {
              _mapController = controller;
            },
          ),
          Positioned(
            top: 150,
            left: 20,
            right: 20,
            child: GooglePlaceAutoCompleteTextField(
              textEditingController: TextEditingController(),
              googleAPIKey: "AIzaSyAQpeU9Sb3VtsgeYDIS34RbzlB6nklSrpk",
              inputDecoration: InputDecoration(
                filled: true,
                fillColor: Colors.white.withOpacity(0.8),
                hintText: "Search Place To Go",
              ),
              debounceTime: 800,
              countries: ["in", "fr"],
              isLatLngRequired: true,
              itemClick: (Prediction prediction) {
                _moveCameraToLocation(prediction);
              },
              seperatedBuilder: Divider(),
              containerHorizontalPadding: 10,
              itemBuilder: (context, index, Prediction prediction) {
                return Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(Icons.location_on),
                      SizedBox(width: 7),
                      Expanded(child: Text("${prediction.description ?? ""}")),
                    ],
                  ),
                );
              },
              isCrossBtnShown: true,
            ),
          ),
        ],
      ),
    );
  }

  void _moveCameraToLocation(Prediction prediction) async {
    final String placeId = prediction.placeId ?? "";
    final String apiKey = "AIzaSyAQpeU9Sb3VtsgeYDIS34RbzlB6nklSrpk";
    final String url =
        "https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=$apiKey";

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final decoded = json.decode(response.body);
        final lat = decoded['result']['geometry']['location']['lat'];
        final lng = decoded['result']['geometry']['location']['lng'];

        print("Latitude: $lat, Longitude: $lng");

        if (_mapController != null && lat != null && lng != null) {
          _mapController!.animateCamera(
            CameraUpdate.newLatLngZoom(
              LatLng(lat, lng),
              15,
            ),
          );
        }
      }
    } catch (error) {
      print("Error: $error");
    }
  }
}
