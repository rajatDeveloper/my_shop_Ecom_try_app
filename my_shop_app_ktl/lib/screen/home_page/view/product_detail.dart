import 'package:flutter/material.dart';

class ProductDataOneToOne extends StatefulWidget {
  final product_name_d;
  final product_img_d;
  final product_old_price_d;
  final product_price_d;

  const ProductDataOneToOne(
      {this.product_name_d,
      this.product_img_d,
      this.product_old_price_d,
      this.product_price_d});
  @override
  State<ProductDataOneToOne> createState() => _ProductDataOneToOneState();
}

class _ProductDataOneToOneState extends State<ProductDataOneToOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Shop Now"),
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
          backgroundColor: Color.fromARGB(255, 32, 83, 109),
        ),
        body: ListView(
          children: [
            Container(
              color: Colors.white70,
              height: 300,
              child: GridTile(
                  child: Hero(
                      tag: widget.product_name_d,
                      child: Image.network(widget.product_img_d))),
            ),
            Divider(
              color: Color.fromARGB(255, 32, 83, 109),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    widget.product_name_d,
                    style: TextStyle(
                        color: Color.fromARGB(255, 3, 33, 48),
                        fontWeight: FontWeight.w700),
                    textScaleFactor: 1.1,
                  ),
                  Text(
                    ("Rs ${widget.product_old_price_d.toString()}"),
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Color.fromARGB(255, 17, 51, 68),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rs ${widget.product_price_d.toString()}",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            // Size  button
            Row(
              children: [
                Expanded(
                    child: MaterialButton(
                        onPressed: () {},
                        color: Color.fromARGB(255, 17, 51, 68),
                        textColor: Colors.white,
                        elevation: 2.0,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text("Size"),
                            ),
                            Expanded(
                                child:
                                    Icon(Icons.arrow_drop_down_circle_outlined))
                          ],
                        ))),
                Expanded(
                    child: MaterialButton(
                        onPressed: () {},
                        color: Color.fromARGB(255, 17, 51, 68),
                        textColor: Colors.white,
                        elevation: 2.0,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text("Color"),
                            ),
                            Expanded(
                                child:
                                    Icon(Icons.arrow_drop_down_circle_outlined))
                          ],
                        ))),
                Expanded(
                    child: MaterialButton(
                        onPressed: () {},
                        color: Color.fromARGB(255, 17, 51, 68),
                        textColor: Colors.white,
                        elevation: 2.0,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text("Qty"),
                            ),
                            Expanded(
                                child:
                                    Icon(Icons.arrow_drop_down_circle_outlined))
                          ],
                        )))
              ],
            ),

            // --------------
            Row(
              children: [
                Expanded(
                    child: MaterialButton(
                        onPressed: () {},
                        color: Color.fromARGB(255, 17, 51, 68),
                        textColor: Colors.white,
                        elevation: 0.4,
                        child: Text("Buy Now"))),
                new IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_shopping_cart_outlined,
                      color: Color.fromARGB(255, 17, 51, 68),
                    )),
                new IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border_outlined,
                      color: Color.fromARGB(255, 17, 51, 68),
                    )),
              ],
            ),
          ],
        ));
  }
}
