import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nursery/constants.dart';

class Bottombar extends StatelessWidget {
  const Bottombar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: defaultPadding * 2,
          right: defaultPadding * 2,
          bottom: defaultPadding),
      height: 80,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: Offset(0, 10),
            color: primaryColor.withOpacity(10),
            blurRadius: 35)
      ]),
      child: Row(
        children: [
          IconButton(
              icon: SvgPicture.asset('assets/icons/flower.svg'),
              onPressed: () {}),
          IconButton(
              icon: SvgPicture.asset('assets/icons/heart-icon.svg'),
              onPressed: () {}),
          IconButton(
              icon: SvgPicture.asset('assets/icons/user-icon.svg'),
              onPressed: () {}),
        ],
      ),
    );
  }
}
