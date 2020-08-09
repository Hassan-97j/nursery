import 'package:flutter/material.dart';
import 'package:nursery/constants.dart';

class HeaderBox extends StatelessWidget {
  const HeaderBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(
        bottom: defaultPadding,
      ), // top: 20),
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
                left: defaultPadding,
                right: defaultPadding,
                bottom: defaultPadding + 30),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Row(
              children: [
                Text(
                  'Safari Nursery',
                  style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                  //TextStyle( ),
                ),
                Spacer(),

                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.transparent,
                  // child: ClipRRect(
                  // clipBehavior: Clip.hardEdge,
                  //borderRadius: BorderRadius.all(Radius.circular(100)),
                  child: Image.asset('assets/images/download.png',
                      fit: BoxFit.fill),
                ),

                //),
                // clipBehavior: Clip.none,
                //borderRadius: BorderRadius.all(Radius.circular(5)),
              ],
            ),
          ),
          Positioned(
              //top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: defaultPadding),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 20,
                        color: primaryColor.withOpacity(0.23),
                      ),
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20, top: 10),
                    hintText: 'Search',
                    hintStyle:
                        TextStyle(color: primaryTextColor.withOpacity(0.5)),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
