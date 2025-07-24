import 'package:flutter/material.dart';

class AodTimeAndDate extends StatefulWidget {
  const AodTimeAndDate({super.key});

  @override
  State<AodTimeAndDate> createState() => _AodTimeAndDateState();
}

class _AodTimeAndDateState extends State<AodTimeAndDate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "12:45",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.amber, fontSize: 150),
          ),
          Text(
            "24 JULY, THURSDAY",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.amber, fontSize: 30),
          ),
        ],
      ),
    );
  }
}
