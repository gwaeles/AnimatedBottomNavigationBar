import 'package:flutter/material.dart';

typedef GestureTapCallback = void Function();

class ListItemActionIcon extends StatelessWidget {
  final IconData icon;
  final GestureTapCallback onTap;

  const ListItemActionIcon(
      {Key key, this.icon, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(Radius.circular(24)),
      onTap: () {},
      child: Ink(
        width: 48,
        height: 48,
        child: Icon(
          icon,
          color: Theme.of(context).focusColor,
        ),
      ),
    );
  }
}
