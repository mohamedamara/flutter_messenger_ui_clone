import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  final String leadingIconURL;
  final String trailingIconURL;
  final String title;
  final String subTitle;

  const ChatItem({
    Key key,
    this.leadingIconURL,
    this.trailingIconURL,
    this.title,
    this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 48,
        width: 48,
        child: CircleAvatar(
          backgroundImage: AssetImage(leadingIconURL),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
      ),
      subtitle: Text(subTitle),
      trailing: Container(
        height: 18,
        width: 18,
        child: CircleAvatar(
          backgroundImage: AssetImage(trailingIconURL),
        ),
      ),
    );
  }
}
