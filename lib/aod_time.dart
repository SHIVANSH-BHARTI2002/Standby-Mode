import 'package:flutter/material.dart';
import 'package:standby_mode/time_function.dart';

class AodTimeAndDate extends StatefulWidget {
  const AodTimeAndDate({super.key});

  @override
  State<AodTimeAndDate> createState() => _AodTimeAndDateState();
}

class _AodTimeAndDateState extends State<AodTimeAndDate> {
  bool isLandscape() {
    Orientation orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.landscape) return true;
    return false;
  }

  String getFormattedDate() {
    final now = DateTime.now();
    final day = now.day;
    final monthName = month(now.month);
    final weekdayName = weekday(now.weekday);
    return '$day $monthName, $weekdayName';
  }

  String getFormattedTime() {
    final now = DateTime.now();
    int hour = now.hour;
    final minute = now.minute.toString().padLeft(2, '0');
    // final period = hour >= 12 ? 'PM' : 'AM';
    hour = hour % 12 == 0 ? 12 : hour % 12;
    return '$hour:$minute';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // shrink vertically to fit content
          children: [
            Text(
              getFormattedTime(),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.amber, fontSize: 150),
            ),
            Text(
              getFormattedDate(),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.amber, fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
