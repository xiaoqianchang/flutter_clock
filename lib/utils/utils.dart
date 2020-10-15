/// Description: Utils
/// <p>
/// Created by Chang.Xiao on 2020-10-14 11:43.
///
/// @version 1.0
class Utils {
  /// 获取本地图片路径
  static String getImagePath(String name, {String format: 'png'}) {
    return 'assets/images/$name.$format';
  }
}