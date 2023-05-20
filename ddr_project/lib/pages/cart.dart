import 'package:ddr_project/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:ddr_project/components/cart_products.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.purpleAccent,
        title: const Text('Cart'),
        actions: const <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: null),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            Row(children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (ctx) {
                          return ListView(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 3,
                                    )),
                                height: 230,
                                width: 20,
                                child: Column(
                                  children: <Widget>[
                                    const SizedBox(height: 15),
                                    const Text(
                                      "Save 10%",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.purpleAccent,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 25,
                                        //fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      "Monthly",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 22,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      "Rs. 199.0 billed monthly",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w200,
                                        fontSize: 18,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    const SizedBox(height: 9),
                                    const Text(
                                      "Rs. 199.0/mo",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    MaterialButton(
                                      onPressed: () {},
                                      color: Colors.purpleAccent,
                                      child: const Text(
                                        "Subscribe Now",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 3,
                                    )),
                                height: 230,
                                child: Column(
                                  children: <Widget>[
                                    const SizedBox(height: 15),
                                    const Text(
                                      "Save 17%",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.purpleAccent,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 25,
                                        //fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      "Half Yearly",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 22,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      "Rs. 999.0 billed biannualy",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w200,
                                        fontSize: 18,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    const SizedBox(height: 9),
                                    const Text(
                                      "Rs. 165.0/mo",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    MaterialButton(
                                      onPressed: () {},
                                      color: Colors.purpleAccent,
                                      child: const Text(
                                        "Subscribe Now",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 3,
                                    )),
                                height: 230,
                                child: Column(
                                  children: <Widget>[
                                    const SizedBox(height: 15),
                                    const Text(
                                      "Save 25%",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.purpleAccent,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 25,
                                        //fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      "Yearly",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 22,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      "Rs. 1799.0 billed annualy",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w200,
                                        fontSize: 18,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    const SizedBox(height: 9),
                                    const Text(
                                      "Rs. 150.0/mo",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    MaterialButton(
                                      onPressed: () {},
                                      color: Colors.purpleAccent,
                                      child: const Text(
                                        "Subscribe Now",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        });
                  },
                  color: Colors.purpleAccent,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: const ListTile(
                    title: Text("Subscription Plan",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                    subtitle: Text("Get Free Deliveries and More!",
                        style: TextStyle(
                            color: Color.fromARGB(255, 78, 75, 75),
                            fontStyle: FontStyle.italic)),
                  ),
                ),
              )
            ]),
            const Expanded(child: CartProducts()),
          ],
        ),
      ),
      // body: const CartProducts(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            const Expanded(
                child: ListTile(
              title: Text("Total: "),
              subtitle: Text("\$180"),
            )),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
                color: Colors.purpleAccent,
                child: const Text(
                  "Check Out",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
