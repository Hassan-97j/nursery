import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nursery/constants.dart';

class MyChip extends StatelessWidget {
  const MyChip({
    Key key,
    this.pic,
  }) : super(key: key);

  final String pic;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: EdgeInsets.all(8),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 20,
              color: primaryColor.withOpacity(0.22)),
          BoxShadow(
              offset: Offset(-15, -15), blurRadius: 20, color: Colors.white),
        ],
      ),
      child: SvgPicture.asset(pic),
    );
  }
}
