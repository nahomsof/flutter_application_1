import 'package:flutter/material.dart';
import 'dart:developer' as devtool show log;

extension Log on Object{
  void log() => devtool.log(toString());
}

enum Type { cat, dog }

abstract class CanRun {
  final Type type;
  CanRun({required this.type});

  void run() {
    "Cat can run so fast".log();
  }
}

mixin Canspeed{
  int get speed;
  void run(){
    "This cat can run at the speed of $speed".log();
  }
}
class Cat with Canspeed {
  @override
  // TODO: implement speed
  int speed = 10;
  @override
  void run() {
    super.run();
    
  }
}

void testIt() {
  final cat = Cat();
  cat.run();
  cat.speed =20;
  cat.run();
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    testIt();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
    );
  }
}
