import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_shop_app_ktl/utils/routes.dart';

class MyDrawerData extends StatelessWidget {
  const MyDrawerData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 32, 83, 109),
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: const Text("Rajat Dhiman"),
            accountEmail: const Text("rajatdelldhiman@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: Icon(
                Icons.person,
                size: 30,
              ),
              // backgroundImage: AssetImage("assets/images/user/rd.jpg"
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.popAndPushNamed(context, MyRoutes.homeRoute);
            },
            child: ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.4,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // Navigator.popAndPushNamed(context, MyRoutes.homeRoute);
            },
            child: ListTile(
              leading: Icon(
                CupertinoIcons.person,
                color: Colors.white,
              ),
              title: Text(
                "My Account",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.4,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // Navigator.popAndPushNamed(context, MyRoutes.homeRoute);
            },
            child: ListTile(
              leading: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
              ),
              title: Text(
                "My Orders",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.4,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // Navigator.popAndPushNamed(context, MyRoutes.homeRoute);
            },
            child: ListTile(
              leading: Icon(
                Icons.dashboard,
                color: Colors.white,
              ),
              title: Text(
                "Categoies",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.4,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // Navigator.popAndPushNamed(context, MyRoutes.homeRoute);
            },
            child: ListTile(
              leading: Icon(
                CupertinoIcons.heart,
                color: Colors.white,
              ),
              title: Text(
                "Favourites",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.4,
              ),
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          InkWell(
            onTap: () {
              // Navigator.popAndPushNamed(context, MyRoutes.homeRoute);
            },
            child: ListTile(
              leading: Icon(
                CupertinoIcons.settings,
                color: Colors.white,
              ),
              title: Text(
                "Settings",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.4,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // Navigator.popAndPushNamed(context, MyRoutes.homeRoute);
            },
            child: ListTile(
              leading: Icon(
                Icons.help,
                color: Colors.white,
              ),
              title: Text(
                "About",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
