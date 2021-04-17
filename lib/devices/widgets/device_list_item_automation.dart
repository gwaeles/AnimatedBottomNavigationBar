import 'package:animated_bottom_navigation_bar/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'device_list_item.dart';
import 'list_item_action_icon.dart';

class DeviceListItemAutomation extends DeviceListItem {
  const DeviceListItemAutomation(
      {Key key, String deviceName, String deviceState})
      : super(key: key, deviceName: deviceName, deviceState: deviceState);

  @override
  Widget buildLeading(BuildContext context) {
    final path = AppTheme.of(context).isDark ? "dark/" : "";

    return SvgPicture.asset(
      'assets/images/${path}scenario.svg',
      width: 48,
      height: 48,
    );
  }

  @override
  Widget get trailing => Row(
        children: [
          ListItemActionIcon(
            icon: Icons.play_arrow,
          ),
        ],
      );
}
