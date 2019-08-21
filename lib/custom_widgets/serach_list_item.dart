import 'package:flutter/material.dart';

class SearchListItem extends StatefulWidget {
  @override
  _SearchListItemState createState() => _SearchListItemState();
}

class _SearchListItemState extends State<SearchListItem> {
  TextEditingController _searchController;

  @override
  void initState() {
    _searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: TextField(
        textAlignVertical: TextAlignVertical.bottom,
        controller: _searchController,
        style: TextStyle(
          color: Colors.black54,
          fontSize: 17,
        ),
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: TextStyle(
            color: Colors.black54,
            fontSize: 17,
          ),
          enabled: false,
          fillColor: Colors.grey[200],
          filled: true,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black54,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50.0),
            ),
            borderSide: BorderSide(width: 0, style: BorderStyle.none),
          ),
        ),
      ),
    );
  }
}
