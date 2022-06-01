import 'package:flutter/material.dart';

class GasPage extends StatefulWidget {
  const GasPage({Key? key}) : super(key: key);

  @override
  State<GasPage> createState() => _GasPageState();
}

class _GasPageState extends State<GasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Gas Page',
            style: TextStyle(color: Colors.white,fontSize:25 ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.red,
              ],
            )),
      ),
    );
  }
}
