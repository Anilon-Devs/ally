import 'package:ally/components/shared/custome_app_drawer.dart';
import 'package:flutter/material.dart';

class SafeAreas extends StatelessWidget {
  const SafeAreas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: customDrawer(context),
      body: Center(child: Text('Map and list of items of Safe Areas')),
    );
  }
}
