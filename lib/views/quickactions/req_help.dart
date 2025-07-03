import 'package:flutter/material.dart';
import 'package:ally/components/shared/custome_app_drawer.dart';

class ReqHelp extends StatelessWidget {
  const ReqHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: customDrawer(context),
      body: Center(child: Text('Map and list of items of Req Help')),
    );
  }
}
