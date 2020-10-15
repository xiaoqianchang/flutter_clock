import 'package:flutter/material.dart';

/// Description: Main page.
/// <p>
/// Created by Chang.Xiao on 2020-10-13 18:11.
/// 
/// @version 1.0
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController pageController;
  int currentIndex = 0;
  var itemType = BottomNavigationBarType.fixed;
  List<BottomNavigationBarItem> _bottomNavigationBarItems; // 底部 item 列表
  List<Widget> _pageList; // page 列表
  StatefulWidget _currentPage; // 当前显示的 page

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    _bottomNavigationBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.account_balance),
        title: Text('首页'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.assistant_photo),
        title: Text('主题'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.album),
        title: Text('白噪音'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.apps),
        title: Text('知识百科'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.account_box),
        title: Text('我的'),
      ),
    ];
    _pageList = <Widget>[
      Container(
        color: Colors.red.shade100,
      ),
      Container(
        color: Colors.red.shade300,
      ),
      Container(
        color: Colors.red.shade500,
      ),
      Container(
        color: Colors.red.shade700,
      ),
      Container(
        color: Colors.red.shade900,
      ),
    ];
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Expanded(
            child: PageView(
              children: _pageList,
              controller: pageController,
              physics: BouncingScrollPhysics(),
              onPageChanged: (page) {
                _currentPage = _pageList[page];
                setState(() => currentIndex = page);
              },
            ),
          ),
          BottomNavigationBar(
            items: _bottomNavigationBarItems,
            onTap: (page) {
              pageController.animateToPage(
                page,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeIn
              );
            },
            currentIndex: currentIndex,
            type: itemType,
          ),
        ],
      ),
    );
  }
}