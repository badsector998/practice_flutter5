import 'package:flutter/material.dart';

class InfoBar extends StatelessWidget {

  final String content;
  final Color colorBackground;

  InfoBar({
    @required this.content, this.colorBackground
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          content,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: colorBackground,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            color: Colors.purple,
            offset: Offset(2, 2)
          )
        ]
      ),
    );
  }
}