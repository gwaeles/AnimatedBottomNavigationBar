import 'package:animated_bottom_navigation_bar/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'device_list_item.dart';

class DeviceListItemSensor extends DeviceListItem {
  final String deviceClass;

  const DeviceListItemSensor(
      {Key key, String deviceName, String deviceState, this.deviceClass})
      : super(key: key, deviceName: deviceName, deviceState: deviceState);

  @override
  Widget buildLeading(BuildContext context) {
    final path = AppTheme.of(context).isDark ? "dark/" : "";

    return SvgPicture.asset(
      imagePath(deviceClass, path),
      width: 48,
      height: 48,
    );
  }

  String imagePath(String deviceClass, String path) {
    if (deviceClass == "temperature") {
      return 'assets/images/${path}thermometer.svg';
    } else if (deviceClass == "humidity") {
      return 'assets/images/${path}humidity.svg';
    } else if (deviceClass == "battery") {
      int level = int.tryParse(deviceState);
      if (level == null) {
        return 'assets/images/${path}battery.svg';
      } else if (level >= 50) {
        return 'assets/images/${path}battery_full.svg';
      } else if (level >= 20) {
        return 'assets/images/${path}battery_half.svg';
      } else {
        return 'assets/images/${path}battery_low.svg';
      }
    } else if (deviceClass == "plug") {
      return 'assets/images/${path}battery.svg';
    } else if (deviceClass == "opening") {
      return 'assets/images/${path}sensor.svg';
    } else {
      return 'assets/images/${path}processor.svg';
    }
  }
}
