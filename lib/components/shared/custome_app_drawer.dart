import 'package:ally/viewmodels/auth_viewmodel.dart';
import 'package:ally/views/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hugeicons/hugeicons.dart';
// Make sure this is imported for context.read()

// Define a function that returns a Drawer
Drawer customDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      children: [
        Container(
          height: 100.0,
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 20),
          child: const Align(
            alignment: Alignment.bottomLeft,
            child: CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage('assets/images/emptyDP.png'),
            ),
          ),
        ),
        _drawerTile(
          context,
          icon: HugeIcons.strokeRoundedSettings01,
          title: 'Settings',
          subtitle: 'Account Settings',
        ),
        _drawerTile(
          context,
          icon: HugeIcons.strokeRoundedNewReleases,
          title: 'Verify',
          subtitle: 'Verify your identity',
        ),
        _drawerTile(
          context,
          icon: HugeIcons.strokeRoundedComment02,
          title: 'Chat',
          subtitle: 'Chat offline with others',
        ),
        _drawerTile(
          context,
          icon: HugeIcons.strokeRoundedBookmark02,
          title: 'Bookmarks',
          subtitle: 'Saved aid locations',
        ),
        const SizedBox(height: 40),
        _simpleDrawerTile(context, title: 'Help Center'),
        _simpleDrawerTile(context, title: 'Request Feature'),
        ListTile(
          onTap: () {
            Navigator.of(context).pop(); // Close drawer
            context.read<AuthViewModel>().logout(); // Call logout
            if (context.mounted) {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (_) => LoginScreen()),
                (route) => false,
              );
            }
          },
          title: _borderedRow(
            title: 'Log out',
            icon: HugeIcons.strokeRoundedLogoutSquare01,
          ),
        ),
      ],
    ),
  );
}

Widget _drawerTile(
  BuildContext context, {
  required IconData icon,
  required String title,
  required String subtitle,
}) {
  return ListTile(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            HugeIcon(icon: icon, size: 28.0, color: Color(0xFF000000)),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(subtitle, style: TextStyle(fontSize: 12, height: 1.0)),
              ],
            ),
          ],
        ),
        HugeIcon(
          icon: HugeIcons.strokeRoundedArrowRight01,
          size: 24.0,
          color: Color(0xFF000000),
        ),
      ],
    ),
    onTap: () {
      Navigator.pop(context);
    },
  );
}

Widget _simpleDrawerTile(BuildContext context, {required String title}) {
  return ListTile(
    title: _borderedRow(
      title: title,
      icon: HugeIcons.strokeRoundedArrowRight01,
    ),
  );
}

Widget _borderedRow({required String title, required IconData icon}) {
  return Container(
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(width: 0.8, color: Colors.grey.shade300),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(title, style: TextStyle(fontSize: 16)),
        ),
        HugeIcon(icon: icon, size: 24.0, color: Color(0xFF000000)),
      ],
    ),
  );
}
