<h3 align="center"> 1. Flutter Buttons </h3>

###

<h1 align="left"></h1>

###
<div align="center">
<img src = "https://github.com/mrsajidshaikh/DayToDayTask/assets/149478269/14f97783-638b-4d01-84fb-6bf7c8f44f0d" width = 22% height = 35%>

###
<div align="center">
<a href="https://github.com/mrsajidshaikh/DayToDayTask/blob/master/lib/Lecture%20-%205.1/FlutterButtons.dart">-> 📂 Go To File 📂 <-</a>
</div>

#

<h3 align="center"> 2. Digital Clock </h3>

###

<h1 align="left"></h1>

###
<div align="center">
<img src = "https://github.com/mrsajidshaikh/DayToDayTask/assets/149478269/edcefcc5-05a3-4de7-87f6-65b7feb8e06c" width = 22% height = 35%>

###
<div align="center">
<a href="https://github.com/mrsajidshaikh/DayToDayTask/blob/master/lib/Lecture%20%20-%205.3/DigitalClock.dart">-> 📂 Go To File 📂 <-</a>
</div>
#

<h3 align="center"> 3. Dual Clock </h3>

###

<h1 align="left"></h1>

###
<div align="center">
<img src = "https://github.com/mrsajidshaikh/DayToDayTask/assets/149478269/3899ba37-5c41-46e2-86f6-af7fc48f20fa" width = 22% height = 35%>

###
<div align="center">
<a href="https://github.com/mrsajidshaikh/DayToDayTask/blob/master/lib/Lecture%20%20-%205.3/DigitalClock.dart">-> 📂 Go To Dart File 📂 <-</a>
</div>



###

<h3 align="center"> 4. Strap Watch </h3>

###

<h1 align="left"></h1>

###
<div align="center">
<img src = "https://github.com/mrsajidshaikh/DayToDayTask/assets/149478269/dffc4b4d-5364-4c1c-a59a-c6800b9d0e1c" width = 22% height = 35%>

###
<div align="center">
<a href="https://github.com/mrsajidshaikh/DayToDayTask/blob/master/lib/Lecture%20%20-%205.3/StrapWatch.dart">-> 📂 Go To Dart File 📂 <-</a>
</div>


#

<h3 align="center"> 5. Dual Clock </h3>

###

<div align="center">
<video src = "https://github.com/mrsajidshaikh/DayToDayTask/assets/149478269/80db749f-72d9-4a38-8e9e-fa65da3af807">

###

#

<h3 align="center"> 6. Clock App </h3>

###

<div align="center">
<video src = "https://github.com/mrsajidshaikh/DayToDayTask/assets/149478269/299434c0-3a70-4d85-90cd-bc1a221c7e1d ">

###

  
#

<h1><div align="center"> Asynchronous Programming </div></h1>

<br><br>

# What is  Asynchronous Programming?

Asynchronous programing is programing paradigm that allows tasks or operations to run independently and concurrently,without waiting for each other to complete before moving on the next task.

#


# What is Future Class ?

The Future class represents a future result of an asynchronous computation. this result will appear in future after the processing is complete.

#


## What is Duration Class & Future.delayed() Constructor.

delayed Flutter is a constructor that creates a future which runs its computation after a delay.
The Future.delayed constructor has two arguments.
1. Duration object which specifies the delay before the callback function is executed.
2. the callback function.

```Example. 
  void main()
  {
    Future.delayed(const Duration(seconds: 2),(){
        print('Hello after 2 seconds');
    });
  }
```
#


# What is the Use of the async & await keyword?

In Flutter, async and await are used to perform asynchronous operations in a more readable and structured manner. they are part of Dart language, on which Flutter is built.

#


## What is Recursion ?

Recursion is the process of defining a problem (or the solution to a problem) in terms of (a simpler version) itself. 

```Example. 
  We can define the operation "find your way home" as:
  1. If you are at home, stop moving.
  2. Take one step towards home.
  3. "find your way home".
```

#


## What is Timer class ?

The timer class allows us to schedule future actions and provides us with the control mechanisms to start,cancel and reset timers.

```Example. 
  Timer _timer = Timer(Duration(seconds: 10),(){
    // This block of code will be executed when timer finishes.
    print('Timer has finished counting down.');
  });
```

#


## What is Timer.periodic ?

It allows you to schedule a callback to be executed repeatedly with a specified duration between each call.

```Example. 
  import 'package:flutter/material.dart';

class PeriodicTimerWidget extends StatefulWidget {
  @override
  _PeriodicTimerWidgetState createState() => _PeriodicTimerWidgetState();
}

class _PeriodicTimerWidgetState extends State<PeriodicTimerWidget> {
  Timer? _periodicTimer;
  int _tickCount = 0;

  void _startPeriodicTimer() {
    const oneSecond = Duration(seconds: 1);
    _periodicTimer = Timer.periodic(oneSecond, (Timer timer) {
      setState(() {
        _tickCount++;
      });
    });
  }

  @override
  void dispose() {
    _periodicTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Tick: $_tickCount',
          style: TextStyle(fontSize: 48),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _startPeriodicTimer,
        tooltip: 'Start Periodic Timer',
      ),
    );
  }
}
```
