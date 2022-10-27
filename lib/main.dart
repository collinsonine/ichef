import 'package:flutter/material.dart';
import 'package:ichef/classes/customclasses.dart';
import 'package:ichef/pages/login.dart';
import 'package:ichef/pages/register.dart';

void main() => runApp(const MyApp());
final colors = Mycolors();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      title: 'Material App',
      routes: {
        '/': (context) => const FirstScreen(),
        '/login': (context) => SigninScreen(),
        '/register': (context) => RegisterScreen(),
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 60),
            height: 600,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: const BoxDecoration(),
            child: Image.asset(
              'assets/images/bg.png',
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: const Text(
              'Start Cooking',
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: const Text(
              "Let's join our community \nto cook better food!",
              textAlign: TextAlign.center,
              textHeightBehavior: TextHeightBehavior(
                  leadingDistribution: TextLeadingDistribution.even),
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black45,
                height: 1.5,
              ),
            ),
          ),
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
                    Navigator.pushNamed(context, '/login');
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 15),
                  )))
        ],
      ),
    );
  }
}
