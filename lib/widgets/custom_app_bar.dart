import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/config/palette.dart';
import 'package:flutter_facebook_responsive_ui/models/user_model.dart';
import 'package:flutter_facebook_responsive_ui/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomAppBar extends StatelessWidget {
  final List<IconData> icons;
  final User currentUser;
  final int selectedIndex;
  final Function(int) onTap;

  const CustomAppBar(
      {Key key,
      @required this.icons,
      @required this.currentUser,
      @required this.selectedIndex,
      @required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      height: 65.0,
      decoration: BoxDecoration(color: Colors.white, boxShadow: const [
        BoxShadow(color: Colors.black12, offset: Offset(0, 2), blurRadius: 4.0)
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              "Facebook",
              style: TextStyle(
                  color: Palette.facebookBlue,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.2,
                  fontSize: 32.0),
            ),
          ),
          Container(
              height: double.infinity,
              width: 600,
              child: CustomTabBar(
                  icons: icons,
                  selectedIndex: selectedIndex,
                  onTap: onTap,
                  isBottomIndicator: true)),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              UserCard(user: currentUser),
              SizedBox(width: 12.0),
              CircleButton(
                  icon: Icons.search,
                  size: 30.0,
                  color: Colors.black,
                  onPress: () => print("search")),
              CircleButton(
                  icon: MdiIcons.facebookMessenger,
                  size: 30.0,
                  color: Colors.black,
                  onPress: () => print("messenger"))
            ],
          ))
        ],
      ),
    );
  }
}
