import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Buttons(),
    );
  }
}


class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Actions',
          style: TextStyle(
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: 360,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    ElevatedButton(onPressed: () {

                    }, child: Text('Elevated')),
                    FilledButton(onPressed: () {

                    }, child: Text('Filled')),
                    IconButton.filledTonal(onPressed: () {

                    }, icon: Icon(Icons.add)),
                    OutlinedButton(onPressed: () {

                    }, child: Text('Outlined')),
                    TextButton(onPressed: () {

                    }, child: Text('Text'))
                  ],
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Floating Actions Buttons'),
                Icon(Icons.info_outline),
              ],
            ),
          ),
          Container(
            height: 100,
            width: 360,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton.filledTonal(onPressed: () {

                }, icon: Icon(Icons.add)),
                ElevatedButton(onPressed: () {

                }, child: Icon(Icons.add)),
                FilledButton(onPressed: () {

                }, child: Row(
                  children: [
                    Icon(Icons.add),
                    Text("Create")
                  ],
                )),
                OutlinedButton(onPressed: () {

                }, child:  Icon(Icons.add,size: 60,)),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Floating Actions Buttons'),
                Icon(Icons.info_outline),
              ],
            ),
          ),
          Container(
            width: 360,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton.filledTonal(onPressed: () {

                }, icon: Icon(Icons.settings_sharp)),
                ElevatedButton(onPressed: () {

                }, child: Icon(Icons.settings_sharp)),
                FilledButton(onPressed: () {

                }, child: Icon(Icons.settings_sharp)),
                OutlinedButton(onPressed: () {

                }, child: Icon(Icons.settings_sharp)),
                TextButton(onPressed: () {

                }, child: Icon(Icons.settings_sharp))
              ],
            ),
          )
        ],
      ),
    );
  }
}
