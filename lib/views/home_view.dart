import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 100.0, // <-- SET YOUR CUSTOM HEIGHT HERE
              padding: const EdgeInsets.all(16.0), // Optional: Add padding
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
              // Align the content to the bottom-left corner
              child: const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      HugeIcon(
                        icon: HugeIcons.strokeRoundedSettings01,
                        size: 28.0,
                        color: Color(0xFF000000),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Settings',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Account Settings',
                            style: TextStyle(fontSize: 12, height: 1.0),
                          ),
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
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      HugeIcon(
                        icon: HugeIcons.strokeRoundedNewReleases,
                        size: 28.0,
                        color: Color(0xFF000000),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Verify',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Verify your identity',
                            style: TextStyle(fontSize: 12, height: 1.0),
                          ),
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
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      HugeIcon(
                        icon: HugeIcons.strokeRoundedComment02,
                        size: 28.0,
                        color: Color(0xFF000000),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Chat',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Chat offline with others',
                            style: TextStyle(fontSize: 12, height: 1.0),
                          ),
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
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      HugeIcon(
                        icon: HugeIcons.strokeRoundedBookmark02,
                        size: 28.0,
                        color: Color(0xFF000000),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bookmarks',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Saved aid locations',
                            style: TextStyle(fontSize: 12, height: 1.0),
                          ),
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
                // Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 40,
            ),
            ListTile(
              title: Container(
                decoration: BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(width: 0.8, color: Colors.grey.shade300)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Help Center',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    HugeIcon(
                      icon: HugeIcons.strokeRoundedArrowRight01,
                      size: 24.0,
                      color: Color(0xFF000000),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: Container(
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
                      child: Text(
                        'Request Feature',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    HugeIcon(
                      icon: HugeIcons.strokeRoundedArrowRight01,
                      size: 24.0,
                      color: Color(0xFF000000),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: Container(
                decoration: BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(width: 0.8, color: Colors.grey.shade300)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Log out',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    HugeIcon(
                      icon: HugeIcons.strokeRoundedLogoutSquare01,
                      size: 24.0,
                      color: Color(0xFF000000),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
