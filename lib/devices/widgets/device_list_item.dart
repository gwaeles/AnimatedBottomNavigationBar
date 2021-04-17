import 'package:animated_bottom_navigation_bar/themes/app_theme.dart';
import 'package:flutter/material.dart';

abstract class DeviceListItem extends StatelessWidget {
  final String deviceName;
  final String deviceState;

  const DeviceListItem({Key key, this.deviceName, this.deviceState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildChild(context);
  }

  Widget buildChild(BuildContext context) {
    final _leading = leading ?? buildLeading(context);
    final _trailing = trailing ?? buildTrailing(context);

    return InkWell(
      //onTap: () => Navigator.of(context).pushReplacementNamed("/devices"),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Icon
            if (_leading != null) _leading,
            if (_leading != null) SizedBox(width: 16),

            // Labels
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    deviceName,
                    style: AppTheme.of(context).listItemTitleTextStyle,
                  ),
                  SizedBox(height: 2),
                  Text(
                    deviceState,
                    style: AppTheme.of(context).listItemSubtitleTextStyle,
                  ),
                ],
              ),
            ),

            // Action
            if (_trailing != null) _trailing,
            if (_trailing == null) SizedBox(width: 4),
          ],
        ),
      ),
    );
  }

  ///
  /// --- Widgets --- ///
  ///

  Widget get leading => null;
  Widget get trailing => null;

  Widget buildLeading(BuildContext context) => null;
  Widget buildTrailing(BuildContext context) => null;
}
