import 'package:flutter/material.dart';
import 'Lecture  - 5.3/AnalogueClock.dart';
import 'Lecture  - 5.3/DigitalClock.dart';
import 'Lecture  - 5.3/StrapWatch.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: StrapWatch(),
      routes: {
        '/': (context)=> const DigitalClock(),
        '/analogue': (context)=> const AnalogueClock(),
        '/strap': (context)=>  const StrapWatch(),
      },
    );
  }
}
