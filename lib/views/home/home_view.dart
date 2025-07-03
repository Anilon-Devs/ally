import 'package:ally/components/dashboard/dashboard.dart';
import 'package:ally/components/shared/custome_app_drawer.dart';

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: customDrawer(context),
      body: const Dashboard(),
    );
  }
}
