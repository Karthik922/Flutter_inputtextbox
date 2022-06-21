import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _value = '';
  void _onChanged(String value) {
    setState(() {
      _value = 'On Change : ' + value;
    });
  }

  void _onSubmit(String value) {
    setState(() {
      _value = 'On Submitted:' + value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text('Input Text Fields'),
        ),
        body: Column(
          children: <Widget>[
            Text(_value),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Enter Name',
                  hintText: 'Full Name',
                  icon: Icon(Icons.people)),
              autocorrect: true,
              onChanged: _onChanged,
              onSubmitted: _onSubmit,
              keyboardType: TextInputType.text,
            ),
            TextField(
              onChanged: _onChanged,
              onSubmitted: _onSubmit,
              keyboardType: TextInputType.number,
            ),
          ],
        ));
  }
}
