import 'package:flutter/material.dart';
import 'package:ally/components/shared/custome_app_drawer.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class WarAreas extends StatelessWidget {
  const WarAreas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: customDrawer(context),
      body: FlutterMap(
        options: MapOptions(
          initialCenter: const LatLng(1.2878, 103.8666),
          initialZoom: 11,
          interactionOptions: const InteractionOptions(
            flags: ~InteractiveFlag.doubleTapZoom,
          ),
        ),
        children: [
          SizedBox(
            height: 280,
            child: TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.app',
            ),
          ),
        ],
      ),
    );
  }
}
