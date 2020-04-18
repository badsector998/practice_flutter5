import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(Practice5());
}

class Practice5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practice 5 App'),
        backgroundColor: Colors.deepOrange,
      ),

      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            Image(
              image: AssetImage('images/asset1.png'),
            ),

            Center(
              child: Text('Please Register Goshujin-Sama'),
            ),

            Container(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  hintText: 'What\'s your name?',
                ),
              ),
              margin: EdgeInsets.all(10),
            ),

            Container(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Birthday',
                  hintText: 'When is YOUR Birthday?',
                ),
                keyboardType: TextInputType.datetime,
              ),
              margin: EdgeInsets.all(10),
            ),

            Container(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Phone number',
                  hintText: 'What\'s your number?',
                ),
                keyboardType: TextInputType.number,
              ),
              margin: EdgeInsets.all(10),
            ),

            Container(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'E-Mail',
                  hintText: 'What\'s your E-Mail?',
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              margin: EdgeInsets.all(10),
            ),

            Container(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'What\'d you like to be called?',
                ),
              ),
              margin: EdgeInsets.all(10),
            ),

            Container(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'DON\'T TELL THIS TO ANYONE!',
                ),
                obscureText: true,
              ),
              margin: EdgeInsets.all(10),
            ),

            SizedBox(height: 20,),

            Center(
              child : RaisedButton(
                onPressed: (){},
                child: Text('Submitt'),
                color: Colors.deepOrange,
              )
            )
        ],
      )
 
      )
    );
  }
}