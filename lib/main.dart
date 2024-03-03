import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi primera App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.lightBlue,
          backgroundColor: Colors.lightBlue.shade50,
          errorColor: Colors.redAccent,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '¡Hola Mundo!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

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

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCount() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Clic'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Incrementar',
            backgroundColor: Colors.lightBlue,
            child: const Icon(Icons.arrow_circle_up_rounded),
          ),
          const SizedBox(
            width: 30,
          ),
          FloatingActionButton(
              onPressed: _decrementCounter,
              tooltip: 'Decrementa el valor',
              backgroundColor: Colors.lightBlue,
              child: const Icon(Icons.arrow_circle_down_rounded)),
          const SizedBox(
            width: 30,
          ),
          FloatingActionButton(
              onPressed: _resetCount,
              tooltip: 'Reset',
              backgroundColor: Colors.lightBlue,
              child: const Icon(Icons.restore)),
        ],
      ),
    );
  }
}
