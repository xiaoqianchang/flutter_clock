import 'package:flutterclock/constant/app_constants.dart';
import 'package:flutterclock/http/http_constant.dart';

/// Description: Http detail config.
/// <p>
/// Created by Chang.Xiao on 2020-10-14 20:13.
///
/// @version 1.0
class HttpConfig {

  static const int DEFAULT_TIMEOUT = 10;
}

String getServerNetAddressHost() {
  if (AppConstants.environmentId == AppConstants.ENVIRONMENT_ON_LINE) {
    return HttpConstant.SERVER_NET_ADDRESS;
  } else if (AppConstants.environmentId == AppConstants.ENVIRONMENT_DEVELOP) {
    return HttpConstant.SERVER_NET_ADDRESS_DEVELOP;
  } else {
    return HttpConstant.SERVER_NET_ADDRESS_TEST;
  }
}