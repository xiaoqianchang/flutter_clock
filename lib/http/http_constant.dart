/// Description: 网络相关的常量
/// <p>
/// Created by Chang.Xiao on 2020-10-14 20:08.
///
/// @version 1.0
class HttpConstant {

  static const String SERVER_NET_ADDRESS = "https://wx1.adgomob.com/c_terminal/"; // 正式地址
  static const String SERVER_NET_ADDRESS_DEVELOP = "http://172.16.50.12:8080/c_terminal/"; // 开发地址
  static const String SERVER_NET_ADDRESS_TEST = "https://wxtest.adgomob.com/c_terminal/"; // 测试地址

  // resultCode
  static const int SUCCESS = 200;
  static const int CODE_NET_ERROR = 201;
  static const int CODE_NET_TIMEOUT = 202;
  static const int CODE_HTTP_EXCEPTION = 203;
  static const int CODE_DATA_PARSE_ERROR = 204;
  static const int CODE_INVALID_RESPONSE = 205;
  static const int CODE_STORAGE_EXCEPTION = 206;
  static const int CODE_NULL_RESPONSE = 207;
  static const int CODE_OTHER_EXCEPTION = 208;
  static const int CODE_SYSTEM_EXCEPTION = 209;
  static const int CODE_TOKEN_INVALID = 210;
  static const int CODE_LOGOUT = 211;

  static const String MSG_NET_ERROR = "网络不给力，请检查网络设置";
  static const String MSG_NET_TIMEOUT = "请求超时，请稍后重试";
  static const String MSG_HTTP_EXCEPTION = "Http请求异常，请稍后重试";
  static const String MSG_DATA_PARSE_ERROR = "数据解析异常，请稍后重试";
  static const String MSG_INVALID_RESPONSE = "响应异常，请稍后重试";
  static const String MSG_STORAGE_EXCEPTION = "存储异常，请稍后重试";
  static const String MSG_NULL_RESPONSE = "响应错误，请稍后重试";
  static const String MSG_OTHER_EXCEPTION = "服务异常，请稍后重试";
  static const String MSG_SYSTEM_EXCEPTION = "系统异常";
  static const String MSG_TOKEN_INVALID = "您的登录信息已失效，请重新登录";
  static const String MSG_LOGOUT = "您的登录信息已失效，请重新登录";

  // errorCode
  static const int ERROR_CODE_1 = 1; // 未知错误（服务器内部错误）
  static const int ERROR_CODE_555 = 555; // 接口异常
  static const int ERROR_CODE_999 = 999; // 支付失败
  static const int ERROR_CODE_1001 = 1001; // 传入参数为空
  static const int ERROR_CODE_1002 = 1002; // 不存在此商户订单号
  static const int ERROR_CODE_1003 = 1003; // 代表已领取过该福利
  static const int ERROR_CODE_1004 = 1004; // 合成补签卡水果种子不够，无法合成 // appFruitsProduct/addRetroactiveCard
  static const int ERROR_CODE_2001 = 2001; // 用户已在另外一台设备登录

  // 返回数据是否为 null 字符串
  static const String RESULT_NULL = "null";

  // 默认pageId
  static const int DEFAULT_PAGE = 1;
  // 默认每页数量15
  static const int DEFAULT_PAGE_SIZE = 15;

  /// 天气的key
  static const String WEATHER_KEY = "7f77c1e07418478391c0dd5de28a9d27";

  /// 获取城市及ip 的接口
  static const String URL_CITY_AND_IP = "http://pv.sohu.com/cityjson?ie=utf-8";

  static const String URL_CITY = "http://ip.taobao.com/service/getIpInfo.php?ip=";

  static const String URL_WEATHER = "http://apis.juhe.cn/simpleWeather/query"; // 天气

  static const String URL_NIOSE_HOME_SHARE_TARGET = "http://adgomob.com/h5/spsz/"; // 白噪音首页分享targetUrl
  static const String URL_NIOSE_SHARE_TARGET = "http://adgomob.com/h5/spsz/detail.html"; // 单个白噪音分享targetUrl
  static const String KEY_TYPE_ID = "type_id";
  static const String URL_LIMIT_TIME_VIP_INVITE_FRIEND = "https://wx1.adgomob.com/h5/yaoqing/index.html"; // 限时免费领会员分享targetUrl
  static const String KEY_CODE = "code";
  static const String KEY_URL = "url";
}