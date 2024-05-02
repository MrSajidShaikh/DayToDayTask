import 'dart:async';
import 'dart:math';
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
                image: AssetImage("assets/Images/sukuna.jpg"), fit: BoxFit.fill),
          ),
          child: Transform.translate(
              offset: const Offset(10, 100),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${dateTime.hour}:${dateTime.minute}:${dateTime.second} ',
                        style: const TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      Text(
                        amPm,
                        style: const TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                  Text(
                    '${dateTime.month}  $day',
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  const SizedBox(height: 25,),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white,width: 3),
                        shape: BoxShape.circle
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        ...List.generate(60, (index) => Transform.rotate(angle: ((index+1) * 6 * pi)/180,
                          child: ((index + 1) % 5 == 0) ? const VerticalDivider(
                            thickness: 5,
                            color: Colors.red,
                            indent: 0,
                            endIndent: 170,
                          ) : const VerticalDivider(
                            thickness: 3,
                            color: Colors.white,
                            indent: 0,
                            endIndent: 180,
                          )
                        )),
                        Transform.rotate(angle: (dateTime.hour % 12 + dateTime.minute/60) * 30 * pi/180,
                          child: const VerticalDivider(
                            thickness: 5,
                            color: Colors.red,
                            indent: 60,
                            endIndent:80,
                          ),
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,color: Colors.white
                          ),
                        ),
                        Transform.rotate(angle: (dateTime.second * 6 * pi)/180,
                          child: const VerticalDivider(
                            thickness: 2,
                            color: Colors.white,
                            indent: 35,
                            endIndent:80,
                          ),
                        ),
                        Transform.rotate(angle: (dateTime.minute * 6 * pi)/180,
                          child: const VerticalDivider(
                            thickness: 3,
                            color: Colors.white,
                            indent: 50,
                            endIndent:80,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ));
  }
}