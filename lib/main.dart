import 'package:flutter/material.dart';

void main() {
  //runApp is a function in the flutter framework package.
  //it calls to execution the root widget of our app, thereby calling into
  //execution the entire flutter app.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cool Counter',
      theme: ThemeData(),
      home: const MyHomePage(title: 'Counter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int ctr = 0;

  void _incrementCounter() {
    setState(() {
      ctr++;
    });
  }

  void _decrementCounter() {
    setState(() {
      ctr--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 7, 63, 109),
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 200),
            Text(
              '$ctr',
              style: const TextStyle(
                fontSize: 120,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 7, 63, 109),
              ),
            ),
            const SizedBox(height: 0),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              OutlinedButton(
                onPressed: _decrementCounter,
                child: const Icon(Icons.remove),
              ),
              const SizedBox(width: 50),
              FilledButton(
                onPressed: _incrementCounter,
                child: const Icon(Icons.add),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
