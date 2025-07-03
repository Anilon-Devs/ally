import 'package:ally/views/home/post_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hugeicons/hugeicons.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              'Quick Views',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: BoxBorder.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: null,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '08',
                            style: GoogleFonts.roboto(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.red[400],
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'War Zones',
                            style: GoogleFonts.roboto(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Expanded(
                    child: SizedBox(
                      height: null,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '10',
                            style: GoogleFonts.roboto(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange[400],
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Aid Zones',
                            style: GoogleFonts.roboto(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Expanded(
                    child: SizedBox(
                      height: null,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '05',
                            style: GoogleFonts.roboto(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.green[400],
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Safe Places',
                            style: GoogleFonts.roboto(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 18),
            //todo: break here from this line, make it another fragment
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Your action here, e.g., navigation or opening a link
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(
                              20,
                            ), // Controls the button size
                            backgroundColor:
                                Colors.red.shade200, // Button color
                            foregroundColor: Colors.black, // Icon/text color
                          ),
                          child: HugeIcon(
                            icon: HugeIcons.strokeRoundedGun,
                            size: 24.0,
                            color: Color(0xFF000000),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("War Areas"),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Your action here, e.g., navigation or opening a link
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(
                              20,
                            ), // Controls the button size
                            backgroundColor:
                                Colors.orange.shade300, // Button color
                            foregroundColor: Colors.black, // Icon/text color
                          ),
                          child: HugeIcon(
                            icon: HugeIcons.strokeRoundedSafeDelivery02,
                            size: 24.0,
                            color: Color(0xFF000000),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("Aid Areas"),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Your action here, e.g., navigation or opening a link
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(
                              20,
                            ), // Controls the button size
                            backgroundColor:
                                Colors.green.shade300, // Button color
                            foregroundColor: Colors.black, // Icon/text color
                          ),
                          child: HugeIcon(
                            icon: HugeIcons.strokeRoundedCheckmarkCircle01,
                            size: 24.0,
                            color: Color(0xFF000000),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("Safe Areas"),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Your action here, e.g., navigation or opening a link
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(
                              20,
                            ), // Controls the button size
                            backgroundColor:
                                Colors.blue.shade300, // Button color
                            foregroundColor: Colors.black, // Icon/text color
                          ),
                          child: HugeIcon(
                            icon: HugeIcons.strokeRoundedWavingHand02,
                            size: 24.0,
                            color: Color(0xFF000000),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("Request Help"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey.shade300, // Set the color
              thickness: 1, // Set the thickness
              height: 32, // Space around the divider
            ),

            // ****show post and filters on top****
            Expanded(child: PostListScreen()),
          ],
        ),
      ),
    );
  }
}
