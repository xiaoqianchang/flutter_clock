import 'package:flutter/material.dart';
import 'package:flutterclock/constant/app_constants.dart';

/// Description: Route util
/// <p>
/// Created by Chang.Xiao on 2020-10-14 15:30.
///
/// @version 1.0
class RouteUtil {
  static void jumpToMain(BuildContext context) {
    pushReplacementNamed(context, RouteName.ROUTE_MAIN);
  }

  static void pushNamed(BuildContext context, String routeName) {
    Navigator.of(context).pushNamed(routeName);
  }

  static void pushReplacementNamed(BuildContext context, String routeName) {
    Navigator.of(context).pushReplacementNamed(routeName);
  }
}