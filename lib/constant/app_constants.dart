
/// Description: Global variable for application.
/// <p>
/// Created by Chang.Xiao on 2020-10-14 14:47.
/// 
/// @version 1.0
class AppConstants {
  static const int ENVIRONMENT_ON_LINE = 1; // 线上环境
  static const int ENVIRONMENT_DEVELOP = 2; // 开发环境
  static const int ENVIRONMENT_TEST = 3; // 测试环境
  static int environmentId = ENVIRONMENT_ON_LINE; // 当前环境

  static bool isDebug = true;
  static const int INAPPID = 5; // 内部appId，后台自定义的，桌面时钟为5

  static const int KEY_ROTATION_ANIMATION_DURATION = 10000; // 旋转一圈时间
  static const int KEY_FLIP_INTERVAL = 10000; // ViewFlipper flip duration

  static bool isEncryption = true; // 是否加密

  static const String TOURIST_OPEN_ID = "youke666888"; // 默认游客时的 openId

  static const int EXIT_DEFAULT =                   0;      // 用户主动退出登录
  static const int EXIT_FROM_OTHER_DEVICE =         2;      // 单点登录退出

  // 主题类型 (目前用于接口请求参数)
  static const int TYPE_SKIN = 1; // 皮肤类型
  static const int TYPE_BACKGROUND = 2; // 时钟背景
}

class SpKey {
  // 启动引导
  static const String KEY_APP_GUIDE = 'key_app_guide';
}

class RouteName {
  // 首页
  static const String ROUTE_MAIN = 'route_main';
}