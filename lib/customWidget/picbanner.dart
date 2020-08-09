import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nursery/constants.dart';
import 'package:nursery/customWidget/mychip.dart';

class Picbanner extends StatefulWidget {
  const Picbanner({
    Key key,
  }) : super(key: key);

  @override
  _PicbannerState createState() => _PicbannerState();
}

class _PicbannerState extends State<Picbanner> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: SizedBox(
        height: size.height * 0.80,
        child: Expanded(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            padding: EdgeInsets.symmetric(
                                horizontal: defaultPadding),
                            icon:
                                SvgPicture.asset('assets/icons/back_arrow.svg'),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                      ),
                      Spacer(),
                      MyChip(
                        pic: 'assets/icons/sun.svg',
                      ),
                      MyChip(
                        pic: 'assets/icons/icon_2.svg',
                      ),
                      MyChip(
                        pic: 'assets/icons/icon_3.svg',
                      ),
                      MyChip(
                        pic: 'assets/icons/icon_4.svg',
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: size.height * 0.8,
                width: size.width * 0.75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(63),
                    bottomLeft: Radius.circular(63),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 60,
                      color: primaryColor.withOpacity(0.5),
                    ),
                  ],
                  image: DecorationImage(
                      image: AssetImage('assets/images/img.png'),
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.cover),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
