import 'package:flutter/material.dart';
import 'package:my_shop_app_ktl/screen/home_page/view/product_detail.dart';
import 'package:my_shop_app_ktl/utils/routes.dart';

class ProductGrid extends StatefulWidget {
  @override
  State<ProductGrid> createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  var product_list = [
    {
      "name": "Blazer 1",
      "pic":
          "https://st2.depositphotos.com/4826769/7626/i/600/depositphotos_76267371-stock-photo-mens-jacket-isolated-on-white.jpg",
      "old_price": 2000,
      "price": 1500,
    },
    {
      "name": "Blazer 2",
      "pic":
          "https://st2.depositphotos.com/4826769/7626/i/600/depositphotos_76267371-stock-photo-mens-jacket-isolated-on-white.jpg",
      "old_price": 2000,
      "price": 1500,
    },
    {
      "name": "Blazer 3",
      "pic":
          "https://st2.depositphotos.com/4826769/7626/i/600/depositphotos_76267371-stock-photo-mens-jacket-isolated-on-white.jpg",
      "old_price": 2000,
      "price": 1500,
    },
    {
      "name": "Blazer 4",
      "pic":
          "https://st2.depositphotos.com/4826769/7626/i/600/depositphotos_76267371-stock-photo-mens-jacket-isolated-on-white.jpg",
      "old_price": 2000,
      "price": 1500,
    },
    {
      "name": "Blazer 5",
      "pic":
          "https://st2.depositphotos.com/4826769/7626/i/600/depositphotos_76267371-stock-photo-mens-jacket-isolated-on-white.jpg",
      "old_price": 2000,
      "price": 1500,
    },
    {
      "name": "Blazer 6",
      "pic":
          "https://st2.depositphotos.com/4826769/7626/i/600/depositphotos_76267371-stock-photo-mens-jacket-isolated-on-white.jpg",
      "old_price": 2000,
      "price": 1500,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: product_list.length,
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
              product_name: product_list[index]['name'],
              product_img: product_list[index]['pic'],
              product_old_price: product_list[index]['old_price'],
              product_price: product_list[index]['price']);
        });
  }
}

class SingleProduct extends StatelessWidget {
  final product_name;
  final product_img;
  final product_old_price;
  final product_price;

  const SingleProduct(
      {Key? key,
      required this.product_name,
      required this.product_img,
      required this.product_old_price,
      required this.product_price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Hero(
              tag: product_name,
              child: Material(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => ProductDataOneToOne(
                              product_img_d: product_img,
                              product_name_d: product_name,
                              product_old_price_d: product_old_price,
                              product_price_d: product_price,
                            )));
                  },
                  child: GridTile(
                    child: Image.network(product_img),
                    // key: product_name,

                    footer: Container(
                        height: 45,
                        color: Colors.white70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              product_name,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 22, 22, 21),
                                  fontWeight: FontWeight.bold),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Rs $product_old_price",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      color: Color.fromARGB(255, 17, 51, 68),
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Rs $product_price",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        )),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
