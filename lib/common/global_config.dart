import 'dart:io';

import 'package:base_library/base_library.dart';
import 'package:dio/dio.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterclock/http/config/http_config.dart' as HttpConfigImpl;

/// Description: 全局配置，application init
/// <p>
/// Created by Chang.Xiao on 2020-10-14 18:27.
///
/// @version 1.0
class GlobalConfig {
  /// 初始化全局信息
  static Future init(VoidCallback callback) async {
    WidgetsFlutterBinding.ensureInitialized();
    await SpUtil.getInstance(); // 初始化 SpUtil
    initNet(); // 初始化 net
    callback(); // 执行回调
    if (Platform.isAndroid) {
      // 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏；
      // 写在渲染之前的话，MaterialApp组件会覆盖掉这个值。
      SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
          statusBarColor: Colors.transparent);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
  }

  /// 初始化 net
  static void initNet() {
    Options options = DioUtil.getDefOptions();
    options.baseUrl = HttpConfigImpl.getServerNetAddressHost();
    options.connectTimeout = HttpConfigImpl.HttpConfig.DEFAULT_TIMEOUT;
    options.receiveTimeout = HttpConfigImpl.HttpConfig.DEFAULT_TIMEOUT;
    String token = '';
    if (ObjectUtil.isNotEmpty(token)) {
      Map<String, dynamic> _headers = new Map();
      _headers["token"] = token;
      options.headers = _headers;
    }
    HttpConfig config = HttpConfig(options: options);
    DioUtil().setConfig(config);
  }
}