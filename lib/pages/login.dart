import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ichef/classes/customclasses.dart';
import 'package:ichef/main.dart';
import 'package:iconly/iconly.dart';

class SigninScreen extends StatefulWidget {
  SigninScreen({super.key});
  final colors = Mycolors();
  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 200, right: 10, left: 10),
            child: const Text(
              'Welcome Back!',
              style: TextStyle(
                  fontFamily: 'inter',
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color: Color.fromARGB(255, 46, 62, 92)),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: const Text(
              'Please enter your account here',
              style: TextStyle(
                  fontFamily: 'inter',
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  height: 2,
                  color: Color.fromARGB(255, 46, 62, 92)),
            ),
          ),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 60, right: 20, left: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 30, right: 10),
                    child: Icon(IconlyLight.message),
                  ),
                  iconColor: Colors.black,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32))),
                  hintText: 'Email or phone number',
                ),
              )),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
              child: TextFormField(
                obscureText: true,
                obscuringCharacter: ".",
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 30, right: 10),
                    child: Icon(IconlyLight.lock),
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(left: 20, right: 30),
                    child: Icon(IconlyLight.show),
                  ),
                  iconColor: Colors.black,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32))),
                  hintText: 'Password',
                ),
              )),
          Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.only(right: 30, left: 20, top: 15),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot password?',
                  style: TextStyle(
                      fontFamily: 'inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      height: 2,
                      color: Color.fromARGB(255, 46, 62, 92)),
                ),
              )),
          Container(
              padding: const EdgeInsets.only(top: 60),
              alignment: Alignment.center,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      backgroundColor: colors.btncolors(),
                      minimumSize: const Size(350, 60)),
                  onPressed: () {
                    // Navigator.pushNamed(context, '/login');
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 15),
                  ))),
          Container(
            alignment: Alignment.center,
            padding:
                const EdgeInsets.only(right: 10, left: 10, top: 12, bottom: 12),
            child: const Text(
              'or continue with',
              style: TextStyle(
                  fontFamily: 'inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  height: 2,
                  color: Color.fromARGB(255, 46, 62, 92)),
            ),
          ),
          Container(
              padding: const EdgeInsets.only(top: 10, left: 35, right: 35),
              alignment: Alignment.center,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      backgroundColor: colors.btndanger(),
                      minimumSize: const Size(350, 60)),
                  onPressed: () {
                    // Navigator.pushNamed(context, '/login');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      FaIcon(
                        FontAwesomeIcons.google,
                        size: 15,
                      ),
                      Text(
                        ' Google',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 15),
                      )
                    ],
                  ))),
          Container(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Don't have any account?",
                      style: TextStyle(
                          fontFamily: 'inter',
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          height: 2,
                          color: Color.fromARGB(255, 46, 62, 92)),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontFamily: 'inter',
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          height: 2,
                          color: colors.btncolors()),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
