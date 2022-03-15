import 'package:flutter/material.dart';
import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';

class BannerProduct extends StatelessWidget {
  const BannerProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 136, 163, 177),
      height: 250,
      child: Carousel(
        autoplay: true,
        boxFit: BoxFit.cover,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
        dotSize: 4.0,
        dotColor: Color.fromARGB(255, 136, 163, 177),
        indicatorBgPadding: 8.0,
        images: [
          Image.network(
              "https://static.independent.co.uk/2022/01/28/16/Best%20online%20clothes%20shops%20and%20brands%20Indybest%20copy.jpg?quality=75&width=982&height=726&auto=webp"),
          Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-Yg46vOD2_XNdiVSnHV_xzBV3P1SM4pGk6NwAVxqqn8N10VP_6HQjYyyeF0Gvx-Ql7Sg&usqp=CAU"),
          Image.network(
              "https://ichef.bbci.co.uk/news/976/cpsprodpb/FC31/production/_108216546_fashion-blogger-t-shirt.jpg"),
          Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdkAmjPa4d31_OsXN61PDXKF2jam0jrer03Q&usqp=CAU")
        ],
      ),
    );
  }
}
