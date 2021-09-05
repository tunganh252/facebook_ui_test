import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color color;
  final Function onPress;

  const CircleButton(
      {Key key,
      @required this.icon,
      @required this.size,
      @required this.color,
      @required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      decoration:
          BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
      child: IconButton(
        onPressed: onPress,
        icon: Icon(icon),
        color: color,
        iconSize: size,
      ),
    );
  }
}
