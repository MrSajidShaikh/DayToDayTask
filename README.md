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
