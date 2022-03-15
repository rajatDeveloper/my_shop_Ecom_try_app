import 'package:flutter/material.dart';
import 'package:my_shop_app_ktl/screen/home_page/widget/banner_product.dart';
import 'package:my_shop_app_ktl/screen/home_page/widget/drawer_data.dart';
import 'package:my_shop_app_ktl/screen/home_page/widget/grid_view_product.dart';
import 'package:my_shop_app_ktl/screen/home_page/widget/horizonatl_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 30,
              )),
          // ---------
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 30,
              ))
        ],
        backgroundColor: Color.fromARGB(255, 32, 83, 109), //color is osm
        title: Text("Shop Now"),
        // centerTitle: true,
      ),
      drawer: MyDrawerData(),
      body: ListView(
        children: [
          BannerProduct(),
          //text for caterogieries
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Categories",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 32, 83, 109)),
              textScaleFactor: 1.4,
            ),
          ),
          HorizonatalListCg(),
          Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Recent Product",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 32, 83, 109)),
                textScaleFactor: 1.4,
              )),

          //Grid view
          Container(
            height: 400,
            color: Color.fromARGB(255, 32, 83, 109),
            child: ProductGrid(),
          )
        ],
      ),
    );
  }
}
