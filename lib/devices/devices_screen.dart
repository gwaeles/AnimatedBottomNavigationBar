import 'package:animated_bottom_navigation_bar/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'widgets/animated_bottom_navigation_bar.dart';
import 'widgets/devices_app_bar.dart';
import 'widgets/devices_page.dart';

class DevicesScreen extends StatelessWidget {
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        // Fixing the status bar icon color
        statusBarIconBrightness:
            Theme.of(context).brightness == Brightness.light
                ? Brightness.dark
                : Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: Stack(
          children: [
            CustomScrollView(
              controller: controller,
              slivers: <Widget>[
                DevicesAppBar(),
                DevicesPage(),
              ],
            ),
            AnimatedBottomNavigationBar(
              controller: controller,
              child: BottomNavigationBar(
                key: GlobalKey(),
                backgroundColor: Theme.of(context).brightness == Brightness.light
                ? AppColors.blue
                : AppColors.darkBlue,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.business),
                    label: 'Business',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.school),
                    label: 'School',
                  ),
                ],
                selectedItemColor: Colors.amber[800],
                unselectedItemColor: Theme.of(context).brightness == Brightness.light
                ? AppColors.lightBlue
                : AppColors.lightBlue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
