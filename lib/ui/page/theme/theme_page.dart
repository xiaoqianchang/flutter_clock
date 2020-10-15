import 'package:fluintl/fluintl.dart';
import 'package:flutter/material.dart';
import 'package:flutterclock/res/strings.dart';
import 'package:flutterclock/ui/page/theme/background_page.dart';
import 'package:flutterclock/ui/page/theme/skin_page.dart';

/// Description: Theme page.
/// <p>
/// Created by Chang.Xiao on 2020-10-14 21:12.
///
/// @version 1.0

// tab model
class _Tab {
  final String labelId;

  _Tab(this.labelId);
}

// tab data
final List<_Tab> _tabs = <_Tab>[
  _Tab(Ids.TAB_BACKGROUND),
  _Tab(Ids.TAB_SKIN),
];

class ThemePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: TabLayout(),
          centerTitle: true,
        ),
        body: TabBarViewLayout(),
      ),
    );
  }
}

class TabLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: _tabs
          .map((_Tab _tab) => Tab(text: IntlUtil.getString(context, _tab.labelId)))
          .toList(),
      isScrollable: true,
      labelPadding: EdgeInsets.all(12.0),
      indicatorSize: TabBarIndicatorSize.label,
    );
  }

}

/// 创建 tabBar 对应的 page
class TabBarViewLayout extends StatelessWidget {
  Widget buildTabView(BuildContext context, _Tab _tab) {
    String labelId = _tab.labelId;
    switch (labelId) {
      case Ids.TAB_BACKGROUND:
        return BackgroundPage(labelId: labelId);
      case Ids.TAB_SKIN:
        return SkinPage(labelId: labelId);
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: _tabs.map((_Tab _tab) {
        return buildTabView(context, _tab);
      }).toList(),
    );
  }

}
