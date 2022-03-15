import 'package:flutter/material.dart';

class ProductDataOneToOne extends StatefulWidget {
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
              color: Colors.black,
              height: 300,
            )
          ],
        ));
  }
}
