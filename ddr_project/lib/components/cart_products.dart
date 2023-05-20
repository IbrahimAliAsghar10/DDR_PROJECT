import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  const CartProducts({Key? key}) : super(key: key);

  @override
  State<CartProducts> createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var productsOnTheCart = [
    {
      "name": "Women Blazer",
      "picture": "images/products/blazer2.jpeg",
      "price": "90",
      "size": "M",
      "color": "Black",
      "quantity": "1",
    },
    {
      "name": "Black Dress",
      "picture": "images/products/dress2.jpeg",
      "price": "90",
      "size": "M",
      "color": "Red",
      "quantity": "1",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: productsOnTheCart.length,
        itemBuilder: (context, index) {
          return SingleCartProducts(
            cartName: productsOnTheCart[index]["name"]!,
            cartPicture: productsOnTheCart[index]["picture"]!,
            cartColor: productsOnTheCart[index]["color"]!,
            cartSize: productsOnTheCart[index]["size"]!,
            cartQty: productsOnTheCart[index]["quantity"]!,
            cartPrice: productsOnTheCart[index]["price"]!,
          );
        });
  }
}

class SingleCartProducts extends StatelessWidget {
  final String cartName;
  final String cartPrice;
  final String cartPicture;
  final String cartSize;
  final String cartColor;
  final String cartQty;

  const SingleCartProducts({
    super.key,
    required this.cartName,
    required this.cartPrice,
    required this.cartPicture,
    required this.cartSize,
    required this.cartColor,
    required this.cartQty,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // ======Image======
        leading: Image.asset(
          cartPicture,
          width: 80.0,
          height: 80.0,
        ),
        //======Product Name======
        title: Text(
          cartName,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                // =========Product Size=========
                const Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    cartSize,
                    style: const TextStyle(color: Colors.purpleAccent),
                  ),
                ),
                //==============Product Color============
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Text(
                    cartColor,
                    style: const TextStyle(color: Colors.purpleAccent),
                  ),
                )
              ],
            ),

            //==========Product Price=============
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\$$cartPrice",
                style: const TextStyle(
                    color: Colors.purpleAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
            )
          ],
        ),
        trailing: Column(
          children: <Widget>[
            const Padding(padding: EdgeInsets.all(0.0)),
            Expanded(
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_drop_up)),
            ),
            const Padding(padding: EdgeInsets.all(4.0)),
            Text(
              cartQty,
              textAlign: TextAlign.justify,
            ),
            const Padding(padding: EdgeInsets.all(0.0)),
            Expanded(
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_drop_down)),
            ),
          ],
        ),
      ),
    );
  }
}
