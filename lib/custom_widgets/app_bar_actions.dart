import 'package:flutter/material.dart';
import 'circle_button.dart';

class AppBarActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleButton(
            onTap: () {},
            iconData: Icons.camera_alt,
          ),
          SizedBox(
            width: 15,
          ),
          RotationTransition(
            turns: AlwaysStoppedAnimation(-16 / 360),
            child: CircleButton(
              onTap: () {},
              iconData: Icons.edit,
            ),
          ),
        ],
      ),
    );
  }
}
