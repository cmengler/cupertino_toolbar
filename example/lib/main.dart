import 'package:cupertino_toolbar/cupertino_toolbar.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Cupertino Toolbar Demo',
      home: MyHomePage(title: 'Flutter Cupertino Toolbar')
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
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
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title)
      ),
      child: CupertinoToolbar(
        items: <CupertinoToolbarItem>[
          CupertinoToolbarItem(
            icon: CupertinoIcons.plus_circled,
            semanticLabel: 'Increment',
            onPressed: _incrementCounter
          ),
          CupertinoToolbarItem(
            icon: CupertinoIcons.minus_circled,
            semanticLabel: 'Decrement',
            onPressed: _decrementCounter
          ),
        ],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter'
              ),
            ],
          ),
        ),
      )
    );
  }
}
