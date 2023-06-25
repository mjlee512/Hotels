import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const LatLng currentLocation = LatLng(37.5687400, 129.1169722);

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController _mapController;
  final Map<String, Marker> _markers = {};

  static const _initialCameraPosition = CameraPosition(
    target: LatLng(37.5687400, 129.1169722),
    zoom: 25,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        initialCameraPosition: _initialCameraPosition,
        onMapCreated: (contoller) {
          _mapController = contoller;
          addMarker('test', currentLocation);
        },
        markers: _markers.values.toSet(),
      ),
    );
  }

  addMarker(String id, LatLng location) {
    var marker = Marker(
      markerId: MarkerId(id),
      position: location,
      infoWindow:
          const InfoWindow(title: 'SinbiHotel', snippet: '강원 동해시 일출로 309-1'),
    );

    _markers[id] = marker;
    setState(() {});
  }
}
