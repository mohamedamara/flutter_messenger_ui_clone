import 'package:flutter/material.dart';
import '../custom_widgets/app_bar_title.dart';
import '../custom_widgets/app_bar_actions.dart';
import '../custom_widgets/serach_list_item.dart';
import '../custom_widgets/story_list_item.dart';
import '../custom_widgets/chat_list_item.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _scrollController;
  int _currentIndex = 0;
  double _appBarElevation = 0.0;
  List<ChatListItem> _chatListItem = [];
  _scrollListener() {
    _scrollController.offset == 0.0
        ? setState(() => _appBarElevation = 0.0)
        : setState(() => _appBarElevation = 1.0);
  }

  void onTabTapped(int index) {
    setState(() => _currentIndex = index);
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    for (int i = 0; i < 10; i++) _chatListItem.add(ChatListItem());
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: _appBarElevation,
        title: AppBarTitle(),
        actions: <Widget>[
          AppBarActions(),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: NotificationListener(
          child: ListView(
            controller: _scrollController,
            children: <Widget>[
              SearchListItem(),
              StoryListItem(),
              ..._chatListItem,
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[500],
        items: [
          buildBottomNavigationBarItem(
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Icon(Icons.chat_bubble),
            ),
          ),
          buildBottomNavigationBarItem(Icon(Icons.supervisor_account)),
          buildBottomNavigationBarItem(
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Icon(Icons.explore),
            ),
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(Widget icon) {
    return BottomNavigationBarItem(
      icon: icon,
      title: Container(
        height: 0.0,
      ),
    );
  }
}
