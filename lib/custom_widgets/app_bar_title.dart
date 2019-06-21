import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 38,
          width: 38,
          child: CircleAvatar(
            backgroundImage: AssetImage('images/anonymous.jpg'),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          'Chats',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
          ),
        ),
      ],
    );
  }
}
