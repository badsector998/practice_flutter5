import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice5/info/customTxField.dart';
import 'package:practice5/info/infoBar.dart';

void main() {
  runApp(Practice5());
}

class Practice5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Colors.purple,
        accentColor: Colors.purpleAccent,

        appBarTheme: AppBarTheme(
          color: Colors.purple,
          elevation: 6,
          brightness: Brightness.dark,
        ),

        buttonTheme: ButtonThemeData(
          buttonColor: Colors.purpleAccent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        brightness: Brightness.light
      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.purpleAccent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
      )
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
        title: Text('Practice 5 App',style: TextStyle(fontFamily: "quickkiss"),),
        titleSpacing: 15,

        //backgroundColor: Colors.deepOrange,
      ),

      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            Image(
              image: AssetImage('images/asset1.png'),
            ),

            Center(
              child: InfoBar(content: 'Please Register Goshujin-sama', colorBackground: Colors.purpleAccent,),
            ),

            Container(
              child: CustomTextField(hintTxt: 'What\'s your Name?', label: 'Name')
            ),

            Container(
              child: CustomTextField(hintTxt: 'When is your birthday?', label: 'Birthday', keyboardTypeC: TextInputType.datetime,)
            ),

            Container(
              child: CustomTextField(hintTxt: 'What\'s your number?', label: 'Phone Number', keyboardTypeC: TextInputType.phone,)
            ),

            Container(
              child: CustomTextField(hintTxt: 'What\'s your Email?', label: 'E-Mail', keyboardTypeC: TextInputType.emailAddress,)
            ),

            Container(
              child: CustomTextField(hintTxt: 'What\'d you like to be called?', label: 'Usename',)
            ),

            Container(
              child: CustomTextField(hintTxt: 'DON\'T TELL THIS TO ANYONE', label: 'Password', passyes: true,)
            ),

            SizedBox(height: 20,),

            Center(
              child : RaisedButton(
                onPressed: (){},
                child: Text('Submitt'),
                //color: Colors.deepOrange,
              )
            )
        ],
      )
 
      )
    );
  }
}