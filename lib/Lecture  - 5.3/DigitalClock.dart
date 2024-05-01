import 'dart:async';
import 'package:clockapp/Global.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DigitalClock(),
    );
  }
}

class DigitalClock extends StatefulWidget {
  const DigitalClock({super.key});

  @override
  State<DigitalClock> createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        dateTime = DateTime.now();

        if (dateTime.hour > 11) {
          amPm = 'PM';
        } else {
          amPm = 'AM';
        }
        switch (dateTime.weekday) {
          case 1:
            day = 'Monday';
            break;
          case 2:
            day = 'Tuesday';
            break;
          case 3:
            day = 'Wednesday';
            break;
          case 4:
            day = 'Thursday';
            break;
          case 5:
            day = 'Friday';
            break;
          case 6:
            day = 'Saturday';
            break;
          case 7:
            day = 'Sunday';
            break;
        }
      });
    });
    return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/Images/itachi.jpg"), fit: BoxFit.fill),
          ),
          child: Transform.translate(
              offset: const Offset(10, 100),
              child: Column(
                children: [
                  Text(
                    '${dateTime.hour}:${dateTime.minute}:${dateTime.second} $amPm',
                    style: const TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Text(
                    '${dateTime.month}  $day',
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              )),
        ));
  }
}