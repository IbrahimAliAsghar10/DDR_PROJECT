import 'package:ddr_project/components/horizontal_listview.dart';
import 'package:ddr_project/components/products.dart';
import 'package:ddr_project/components/products_carousel.dart';
import 'package:ddr_project/pages/cart.dart';
import 'package:ddr_project/pages/profile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.redAccent,
        title: const Text('ShopApp'),
        actions: <Widget>[
          const IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: null),
          IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Cart()));
              })
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            // header
            UserAccountsDrawerHeader(
              accountName: const Text('Ibrahim Ali Asghar'),
              accountEmail: const Text('ibrahimaliasghar10@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: const BoxDecoration(color: Colors.redAccent),
            ),
            // body
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => widget),
                );
              },
              child: const ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home, color: Colors.redAccent),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Profile()));
              },
              child: const ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person, color: Colors.redAccent),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('My orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.redAccent),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Cart()));
              },
              child: const ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.redAccent),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard, color: Colors.redAccent),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite, color: Colors.redAccent),
              ),
            ),
            const Divider(),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.grey),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
      body: ListView(children: const <Widget>[
        ProductCarousel(),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Categories',
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        ),
        HorizontalList(),
        Padding(
          padding: EdgeInsets.all(18.0),
          child: Text(
            'Recent Products',
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        ),
        SizedBox(
          height: 320.0,
          child: Products(),
        )
      ]),
    );
  }
}
