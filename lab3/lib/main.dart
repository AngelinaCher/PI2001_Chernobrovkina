import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Инкремент'),
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
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container (
                  child: const Text(
                    'Значение инкремента:',
                    style: TextStyle(fontSize: 23),
                  ),
                ),
                Container(
                  child: Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: _decrementCounter,
                        child: const Icon(Icons.minimize_rounded),
                        style: ButtonStyle (
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.red)
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _incrementCounter,
                        child: const Icon(Icons.add),
                        style: ButtonStyle (
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.green)
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: _reset,
                    child: const Text('Сбросить'),
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.black38)
                    ),
                  ),
                )
              ],
            ),
        ),
    );
  }
}
