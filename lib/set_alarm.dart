import 'package:flutter/material.dart';

class SetAlarmPage extends StatefulWidget {
  SetAlarmPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _SetAlarmPageState createState() => _SetAlarmPageState();
}

class _SetAlarmPageState extends State<SetAlarmPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;

      print( "The counter has been increased to " + _counter.toString());
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //can remove appBar if you need to
      appBar: AppBar(
        // Here we take the value from the SetAlarmPage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Some sample text - SCREEN 2',
            ),
            Text(
              'more sample text- SCREEN 2',
            ),
            Text(
              'You have pushed the button this many times:',
            ),
            //changing the style of the counter number display
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        //turns the click button into a + symbol
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


