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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text(widget.title),
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Значение инкремента:',
                  style: TextStyle(fontSize: 23),
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                // Добавить сюда кнопки
              ],
            ),
          ),
        ),
        floatingActionButton:
            Row(
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
                  )])
    );
  }
}
