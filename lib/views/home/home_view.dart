import 'package:ally/components/dashboard/dashboard.dart';
import 'package:ally/components/shared/custome_app_drawer.dart';
import 'package:ally/views/auth/login_screen.dart';
import 'package:ally/views/home/post_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:provider/provider.dart';
import '../../viewmodels/auth_viewmodel.dart';

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
