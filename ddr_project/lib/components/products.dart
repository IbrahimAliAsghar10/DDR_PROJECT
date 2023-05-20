import 'package:flutter/material.dart';
import 'package:ddr_project/pages/product_details.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  static const productList = [
    {
      "name": "Women Blazer",
      "picture": "images/products/blazer2.jpeg",
      "oldPrice": "120",
      "price": "90",
    },
    {
      "name": "Joggers",
      "picture": "images/products/shoe1.jpg",
      "oldPrice": "120",
      "price": "90",
    },
    {
      "name": "Black Dress",
      "picture": "images/products/dress2.jpeg",
      "oldPrice": "120",
      "price": "90",
    },
    {
      "name": "Heals",
      "picture": "images/products/hills1.jpeg",
      "oldPrice": "120",
      "price": "90",
    },
    {
      "name": "Trouser",
      "picture": "images/products/pants2.jpeg",
      "oldPrice": "120",
      "price": "90",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
            productName: productList[index]['name']!,
            prodImg: productList[index]['picture']!,
            oldPrice: productList[index]['oldPrice']!,
            price: productList[index]['price']!,
          );
        });
  }
}

class SingleProduct extends StatelessWidget {
  final String productName;
  final String prodImg;
  final String oldPrice;
  final String price;

  const SingleProduct({
    super.key,
    required this.productName,
    required this.prodImg,
    required this.oldPrice,
    required this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: productName,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductDetails(
                      productDetailsName: productName,
                      productDetailsOldPrice: oldPrice,
                      productDetailsPicture: prodImg,
                      productDetailsPrice: price,
                    ))),
            child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      productName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Text(
                      "\$$price",
                      style: const TextStyle(
                          color: Colors.purpleAccent,
                          fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(
                      "\$$oldPrice",
                      style: const TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ),
                ),
                child: Image.asset(
                  prodImg,
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}
