import 'package:flutter/material.dart';

class HorizonatalListCg extends StatelessWidget {
  const HorizonatalListCg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Color.fromARGB(255, 61, 122, 153),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryData(
              image_caption: "Shirt",
              image_loc:
                  "https://previews.123rf.com/images/briang77/briang771512/briang77151202454/49674514-t-shirt-vector-icon.jpg"),
          CategoryData(
              image_caption: "Shirt",
              image_loc:
                  "https://previews.123rf.com/images/briang77/briang771512/briang77151202454/49674514-t-shirt-vector-icon.jpg"),
          CategoryData(
              image_caption: "Shirt",
              image_loc:
                  "https://previews.123rf.com/images/briang77/briang771512/briang77151202454/49674514-t-shirt-vector-icon.jpg"),
          CategoryData(
              image_caption: "Shirt",
              image_loc:
                  "https://previews.123rf.com/images/briang77/briang771512/briang77151202454/49674514-t-shirt-vector-icon.jpg"),
          CategoryData(
              image_caption: "Shirt",
              image_loc:
                  "https://previews.123rf.com/images/briang77/briang771512/briang77151202454/49674514-t-shirt-vector-icon.jpg"),
          CategoryData(
              image_caption: "Shirt",
              image_loc:
                  "https://previews.123rf.com/images/briang77/briang771512/briang77151202454/49674514-t-shirt-vector-icon.jpg"),
          CategoryData(
              image_caption: "Shirt",
              image_loc:
                  "https://previews.123rf.com/images/briang77/briang771512/briang77151202454/49674514-t-shirt-vector-icon.jpg"),
          CategoryData(
              image_caption: "Shirt",
              image_loc:
                  "https://previews.123rf.com/images/briang77/briang771512/briang77151202454/49674514-t-shirt-vector-icon.jpg")
        ],
      ),
    );
  }
}

class CategoryData extends StatelessWidget {
  late final String image_loc;
  late final String image_caption;

  CategoryData({required this.image_caption, required this.image_loc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Padding(
        padding: EdgeInsets.all(1),
        child: InkWell(
          onTap: () {},
          child: ListTile(
            title: Image.network(image_loc),
            subtitle: Container(
              height: 16,
              alignment: Alignment.center,
              child: Text(
                image_caption,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
