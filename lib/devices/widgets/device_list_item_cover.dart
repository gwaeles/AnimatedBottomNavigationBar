import 'package:animated_bottom_navigation_bar/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'device_list_item.dart';
import 'list_item_action_icon.dart';

class DeviceListItemCover extends DeviceListItem {
  final int currentPosition;

  const DeviceListItemCover(
      {Key key, String deviceName, String deviceState, this.currentPosition})
      : super(key: key, deviceName: deviceName, deviceState: deviceState);

  @override
  Widget buildLeading(BuildContext context) {
    final path = AppTheme.of(context).isDark ? "dark/" : "";
    final isOpened = currentPosition == null
        ? deviceState == "open"
        : currentPosition == 100;
    final isClosed = currentPosition == null
        ? deviceState == "closed"
        : currentPosition == 0;

    return SvgPicture.asset(
      isOpened
          ? 'assets/images/${path}cover_open.svg'
          : isClosed
              ? 'assets/images/${path}cover_closed.svg'
              : 'assets/images/${path}cover_half.svg',
      width: 48,
      height: 48,
    );
  }

  @override
  Widget get trailing {
    return Row(
      children: [
        ListItemActionIcon(
          icon: Icons.arrow_upward,
        ),
        SizedBox(width: 4),
        ListItemActionIcon(
          icon: Icons.stop,
        ),
        SizedBox(width: 4),
        ListItemActionIcon(
          icon: Icons.arrow_downward,
        ),
      ],
    );
  }
}
