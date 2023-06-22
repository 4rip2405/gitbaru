import 'package:flutter/material.dart';
import 'package:reallivetracking/order_traking_page.dart';

class proses extends StatelessWidget {
  const proses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(10),
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Text(
              "Paket anda sedang diambil, mohon tunggu sebentar ya",
              style: TextStyle(fontSize: 30.0),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: SizedBox(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OrderTrackingPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Lacak Lokasi',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }

}
