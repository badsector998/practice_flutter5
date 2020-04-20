import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final String hintTxt;
  final String label;
  final TextInputType keyboardTypeC;
  final bool passyes;


  CustomTextField({
    @required this.hintTxt,
    @required this.label,
    this.keyboardTypeC,
    this.passyes = false
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          hintText: hintTxt,
        ),
        keyboardType: keyboardTypeC,
        obscureText: passyes,
      ),
      margin: EdgeInsets.all(20),
    );
  }
}