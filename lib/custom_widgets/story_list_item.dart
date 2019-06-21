import 'package:flutter/material.dart';

class StoryListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 45,
        height: 45,
        child: new RawMaterialButton(
          fillColor: Colors.grey[200],
          shape: new CircleBorder(),
          elevation: 0.0,
          child: new Icon(
            Icons.add,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
      title: Text(
        'Your Story',
        style: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 17,
          color: Colors.black,
        ),
      ),
      subtitle: Text('Add to your story'),
    );
  }
}
