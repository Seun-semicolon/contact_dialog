import'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Travel naija'),
        ),
        body: Builder(builder: (context)=>Padding(padding: EdgeInsets.all(20),
        child: Center(
          child: Column(children: [
            Text('Welcome to Travelnaija',
              style: TextStyle(fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
              ),
            ),
            Text('Discover the world',
              style: TextStyle(fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.blue[800],
              ),
            ),
            RaisedButton(child: Text('Contact Us'),
              onPressed: () => contactUs(context),
            ),
          ],
          ),
        ),
      ),
      ),
      ),
    );
  }
}

  void contactUs(BuildContext context) {
  showDialog(context: context,
      builder: (BuildContext context) {
    return AlertDialog(
      title: Text('Contact Us'),
      content: Text('Mail us at travelnaija@gmail.com'),
      actions:<Widget> [
        FlatButton(child: Text('Close'),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
    );
      },
  );
  }

