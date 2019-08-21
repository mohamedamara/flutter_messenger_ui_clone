import 'package:flutter/material.dart';
import 'package:flutter_messenger_ui_clone/model/chat_item_model.dart';
import '../custom_widgets/app_bar_title.dart';
import '../custom_widgets/app_bar_actions.dart';
import '../custom_widgets/serach_list_item.dart';
import '../custom_widgets/story_list_item.dart';
import '../custom_widgets/chat_item.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _scrollController;
  int _currentIndex = 0;
  double _appBarElevation = 0.0;
  List<ChatItem> _chatListItems = [];
  List<ChatItemModel> dummyChatItems = [
    ChatItemModel(
      leadingIconURL: 'images/bill_gates.jpg',
      title: 'Bill Gates',
      subTitle: 'sorry i need to update my windows',
      trailingIconURL: 'images/bill_gates.jpg',
    ),
    ChatItemModel(
      leadingIconURL: 'images/elon_musk.jpg',
      title: 'Elon Musk',
      subTitle: 'the weather in mars is amazing',
      trailingIconURL: 'images/elon_musk.jpg',
    ),
    ChatItemModel(
      leadingIconURL: 'images/tim_cook.png',
      title: 'Tim Cook',
      subTitle: 'apple products are affordable',
      trailingIconURL: 'images/tim_cook.png',
    ),
    ChatItemModel(
      leadingIconURL: 'images/mark_zuckerberg.jpg',
      title: 'Mark Zuckerberg',
      subTitle: 'we care about your privacy',
      trailingIconURL: 'images/mark_zuckerberg.jpg',
    ),
    ChatItemModel(
      leadingIconURL: 'images/linus_torvalds.jpg',
      title: 'Linus Torvalds',
      subTitle: 'i like Nvidia',
      trailingIconURL: 'images/linus_torvalds.jpg',
    ),
  ];

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
    for (int i = 0; i < dummyChatItems.length; i++)
      _chatListItems.add(
        ChatItem(
          leadingIconURL: dummyChatItems[i].leadingIconURL,
          trailingIconURL: dummyChatItems[i].trailingIconURL,
          title: dummyChatItems[i].title,
          subTitle: dummyChatItems[i].subTitle,
        ),
      );
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
          child: ScrollConfiguration(
            behavior: CustomScrollBehavior(),
            child: ListView(
              controller: _scrollController,
              children: <Widget>[
                SearchListItem(),
                StoryListItem(),
                ..._chatListItems,
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[500],
        items: [
          buildBottomNavigationBarItem(
            Container(
              margin: EdgeInsets.only(left: 40),
              child: Icon(Icons.chat_bubble),
            ),
          ),
          buildBottomNavigationBarItem(
            Icon(Icons.supervisor_account),
          ),
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

class CustomScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
