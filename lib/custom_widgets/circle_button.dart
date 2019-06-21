import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final IconData iconData;
  const CircleButton({Key key, this.onTap, this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = 35.0;
    return new InkResponse(
      onTap: onTap,
      child: new Container(
        width: size,
        height: size,
        decoration: new BoxDecoration(
          color: Colors.grey[200],
          shape: BoxShape.circle,
        ),
        child: new Icon(
          iconData,
          color: Colors.black,
          size: 20,
        ),
      ),
    );
  }
}
