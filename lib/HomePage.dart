import 'package:flutter/material.dart';

import 'CamPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String led = '0';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        // appBar: AppBar(
        //       backgroundColor: Colors.red,
        //       title: const Center(
        //           child: Text(
        //         'Control Page',
        //         style: TextStyle(fontSize: 40),
        //       )),
        //     ),
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.red,
                  Colors.blue,
                ],
              ),
            ),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 450,
                      child: TextButton.icon(
                        style: ButtonStyle(
                          shape:
                          MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          )),
                          alignment: Alignment.bottomCenter,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CamPage()),
                          );
                        },
                        label: const Text(
                          'Camera Page',
                          style: TextStyle(color: Colors.white),
                        ),
                        icon: const Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ]),
            )));
  }
}
