// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main(){
  runApp(const Counter());
}
class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterAlgo(),

    );
  }
}
class CounterAlgo extends StatefulWidget {
  const CounterAlgo({super.key});

  @override
  State<CounterAlgo> createState() => _CounterAlgoState();
}
class _CounterAlgoState extends State<CounterAlgo> {
  int _counter = 0;
  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter(){
    setState(() {
      _counter--;
    });
  }

  void _resetCounter(){
    setState(() {
      _counter=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('Counter App',
          style: TextStyle(color: Colors.orangeAccent)
        ),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                Text('Total count is:',
                  style: TextStyle(
                      fontSize: 30)),
                 Text(_counter.toString(),
                 style: TextStyle(fontSize: 80, color: Colors.orange[100]),),
              ],
            ),
            Center(
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: (){
                      _incrementCounter();
                    },
                    backgroundColor: Colors.orange[100],
                    child: Icon(Icons.add, color: Colors.orange,size: 45,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16,0, 0, 0),
                    child: FloatingActionButton(
                      onPressed: (){
                        _decrementCounter();
                      },
                      backgroundColor: Colors.orange[100],
                      child: Icon(Icons.remove, color: Colors.orange, size: 45)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                    child: FloatingActionButton(
                      onPressed: (){
                        _resetCounter();
                      },
                      backgroundColor: Colors.orange[100],
                      child: Text('Reset', style: TextStyle(color: Colors.orange)),
                                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
