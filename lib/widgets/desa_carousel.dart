import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

// slide
///////////////////////////////////////////////////////////////////////////////
class DesaCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      height: 200,
      child: Carousel(
        images: [
          Image.asset(
            'slideimages/1.jpg',
            fit: BoxFit.fill,
          ),

          Image.asset(
            'slideimages/2.jpg',
            fit: BoxFit.fill,
          ),
          Image.asset(
            'slideimages/3.jpg',
            fit: BoxFit.fill,
          ),
          Image.asset(
            'slideimages/4.jpg',
            fit: BoxFit.fill,
          ),
          Image.asset(
            'slideimages/5.jpg',
            fit: BoxFit.fill,
          ),
          // AssetImage('slideimages/2.jpg'),
        ],
        dotColor: Colors.green,
        dotSpacing: 20.0,
        dotSize: 4.0,
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.black.withOpacity(0.2),
        autoplay: true,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 5),
        // borderRadius: true,
        // radius: Radius.circular(40.0),
      ),
    );
  }
}
