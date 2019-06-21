import 'package:flutter/material.dart';

class ChatListItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 48,
        width: 48,
        child: CircleAvatar(
          backgroundImage: AssetImage('images/v_for_vandetta.jpg'),
        ),
      ),
      title: Text(
        'John Doe',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
      ),
      subtitle: Text('lorem ipsum'),
      trailing: Container(
        height: 18,
        width: 18,
        child: CircleAvatar(
          backgroundImage: AssetImage('images/v_for_vandetta.jpg'),
        ),
      ),
    );
  }
}
