import 'package:flutter/material.dart';
import 'package:reallivetracking/main.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:reallivetracking/order_traking_page.dart';

class proses extends StatelessWidget {
  const proses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Proses Pengiriman"),
        backgroundColor: Colors.purple,
      ),
      body: Stack(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              child: Text(
                'Deskripsi Paket :',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              child: Text(
                'Paket sedang menuju kesini',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => OrderTrackingPage(),
                    //   ),
                    // );

                    // Contoh (Lokasi Monas)
                    // Latitude = -6.1757268
                    // Longitude = 106.8278576
                    openGmap(-6.1757268, 106.8278576);
                  },
                  child: const Text(
                    'Lacak Lokasi',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ]),
    );
  }

  void openGmap(double latitude, double longitude) {
    Uri url = Uri.parse(
      "http://maps.google.com/maps?q=$latitude,$longitude");
    launchUrl(url);
  }
}
