import 'package:flukit/flukit.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutterclock/constant/app_constants.dart';
import 'package:flutterclock/ui/page/main_page.dart';
import 'package:flutterclock/utils/route_util.dart';
import 'package:flutterclock/utils/utils.dart';
import 'package:rxdart/rxdart.dart';

/// Description:
/// 启动页(launch screen)和闪屏页
///
/// 启动页(launch screen):
/// 当操作系统建立应用程序进程的同时，每个 Android 应用都需要初始化的时间。 Android 提供
/// 了 启动页 的概念，用于在应用初始化的过程中展示一个 Drawable。
/// 在一个 FlutterActivity 被展示之前，Flutter 提供了展示 Android 启动页的支持。
/// <p>
/// Created by Chang.Xiao on 2020-10-13 19:48.
/// 
/// @version 1.0
class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  int _status = 0; // 记录当前页面状态 0：启动页 1：广告 2：引导
  var homePage = MainPage();
  List<String> _guideImageList; // 引导图列表
  List<Widget> _guideBannerList = new List(); // 引导 banner
  bool _showAd = false;

  @override
  void initState() {
    super.initState();
    _init();
  }

  /// 初始化
  void _init() {
    _guideImageList = <String>[
      Utils.getImagePath('bg_newer01'),
      Utils.getImagePath('bg_newer02'),
      Utils.getImagePath('bg_newer03'),
    ];
    Observable.just(1).delay(Duration(milliseconds: 500)).listen((event) {
      if (/*SpUtil.getBool(SpKey.KEY_APP_GUIDE, defValue: true) &&*/
          !ObjectUtil.isEmpty(_guideImageList)) {
        SpUtil.putBool(SpKey.KEY_APP_GUIDE, false);
        _initGuideGallery();
      } else {
        _initSplash();
      }
    });
  }

  void _initGuideGallery() {
    for (int i = 0, length = _guideImageList.length; i < _guideImageList.length; i++) {
      if (i == length - 1) {
        _guideBannerList.add(
          Stack(
            children: <Widget>[
              Image.asset(
                _guideImageList[i],
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(bottom: 50.0),
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    shape: StadiumBorder(
                      side: BorderSide(
                        color: Colors.blue
                      )
                    ),
                    child: Text(
                      '立即体验',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                    onPressed: _jumpToMain,
                  ),
                ),
              ),
            ],
          )
        );
      } else {
        _guideBannerList.add(
          Image.asset(
            _guideImageList[i],
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          )
        );
      }
    }
    setState(() {
      _status = 2;
    });
  }

  void _initSplash() {
    if (_showAd) {
      // 显示广告
      setState(() {
        _status = 1;
      });
    } else {
      _jumpToMain();
    }
  }

  void _jumpToMain() {
    RouteUtil.jumpToMain(context);
  }

  _buildSplashBg() {
    return Image.asset(
      Utils.getImagePath('bg_welcome'),
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
    );
  }

  _buildAdWidget() {
    if (_showAd) {
      // 返回广告视图
    } else {
      return Container(
        height: 0.0,
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Offstage(
            offstage: !(_status == 0),
            child: _buildSplashBg(),
          ),
          Offstage(
            offstage: !(_status == 2),
            child: ObjectUtil.isEmpty(_guideBannerList) ? Container() : Swiper(
              autoStart: false,
              circular: false,
              indicator: CircleSwiperIndicator(
                padding: EdgeInsets.only(bottom: 30.0),
                radius: 4.0,
                itemColor: Colors.black26,
              ),
              children: _guideBannerList,
            ),
          ),
          _buildAdWidget(),
        ],
      ),
    );
  }
}
