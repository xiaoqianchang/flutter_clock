import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutterclock/common/global_config.dart';
import 'package:flutterclock/constant/app_constants.dart';
import 'package:flutterclock/ui/page/main_page.dart';
import 'package:flutterclock/ui/page/splash/splash_page.dart';

void main() {
  GlobalConfig.init(() {
    runApp(MyApp());
  });
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    setInitDir(initStorageDir: true);
    _init();
  }

  void _init() {}

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
      routes: {
        RouteName.ROUTE_MAIN: (ctx) => MainPage(),
      },
      title: 'Flutter Clock',
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.red,
        accentColor: Colors.red,
        indicatorColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
