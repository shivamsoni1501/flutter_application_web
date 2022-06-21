import 'package:flutter/material.dart';
import 'package:flutter_application_web_1/task_completion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Wheather App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Weather'),
      ),
      body: Center(
        child: TaskCompletionWidget(
          radius: 200,
          duration: Duration(milliseconds: 800),
          bgColor: Colors.red[300]!,
          fgColor: Colors.red[700]!,
          bgchild: Icon(Icons.accessibility, size: 200, color: Colors.red[300]),
          fgchild:
              Icon(Icons.accessibility_new, size: 200, color: Colors.red[700]),
        ),
      ),
    );
  }
}
