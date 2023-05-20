import 'package:ddr_project/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:ddr_project/pages/register.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _rememberme = false;

  @override
  Widget build(BuildContext context) {
    Widget registerButton() {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        width: 130,
        //alignment: Alignment.topLeft,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 5.0,
              backgroundColor: Colors.purpleAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            onPressed: () async {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Register()),
              );
            },
            child: const Text(
              "Register",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.25,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            )),
      );
    }

    Widget loginButton() {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        width: 130,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 5.0,
              backgroundColor: Colors.purpleAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            onPressed: () async {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => HomePage()),
              // );
            },
            child: const Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            )),
      );
    }

    Widget rememberMe() {
      return Row(
        children: <Widget>[
          Theme(
              data: ThemeData(unselectedWidgetColor: Colors.purpleAccent),
              child: Checkbox(
                value: _rememberme,
                checkColor: Colors.white,
                activeColor: Colors.purpleAccent,
                onChanged: (value) {
                  setState(() {
                    _rememberme = value!;
                  });
                },
              )),
          const Text("Remember Me",
              style: TextStyle(color: Colors.purpleAccent)),
        ],
      );
    }

    Widget forgotPassword() {
      return Container(
        alignment: Alignment.centerRight,
        child: TextButton(
            onPressed: (() => debugPrint("Forgot Password Button Pressed")),
            child: const Text("Forgot Password?",
                style: TextStyle(color: Colors.purpleAccent))),
      );
    }

    Widget buildPasswordTF() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Password",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
            //style: kLabelStyle,
          ),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: const TextField(
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
              ),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.purpleAccent, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 250, 59, 59), width: 1.0),
                ),
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.black,
                ),
                hintText: 'Password',
              ),
            ),
          )
        ],
      );
    }

    Widget buildEmailTF() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Email",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: const TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
              ),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 250, 59, 59), width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 250, 59, 59), width: 1.0),
                ),
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                hintText: 'abc.xyz@nu.edu.pk',
              ),
            ),
          )
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.purpleAccent,
        title: const Text('Login'),
        actions: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              })
        ],
      ),
      body: Stack(children: <Widget>[
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.white),
        ),
        SizedBox(
          height: double.infinity,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 120.0,
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 30.0),
                  buildEmailTF(),
                  const SizedBox(height: 30.0),
                  buildPasswordTF(),
                  forgotPassword(),
                  rememberMe(),
                  Row(children: [
                    loginButton(),
                    const Spacer(),
                    registerButton(),
                  ])

                  //_buildRecaptcha(),
                ]),
          ),
        ),
      ]),
    );
  }
}
