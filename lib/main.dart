import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Ulai'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++; // Sekarang benar-benar increment
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) _counter--; // Pastikan tidak negatif
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('this many times:'),

            Container(
              width: 200,
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const Icon(Icons.favorite),
                  const Icon(Icons.favorite),
                  const Icon(Icons.favorite),
                ],
              ),
            ),
            Text('$_counter', style: Theme.of(context).textTheme.headlineSmall),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove), // Ubah ikon ke remove
          ),
          const SizedBox(width: 35), // Jarak antara tombol
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
          ),
        ],
      ),
    );
  }
}
