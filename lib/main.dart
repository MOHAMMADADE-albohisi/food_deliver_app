import 'package:flutter/material.dart';
import 'package:food_deliver_app/Homes_screen/bottom_navigator_screen.dart';
import 'package:food_deliver_app/Homes_screen/home_screen.dart';
import 'package:food_deliver_app/login&regester_screens/forgetpassword_screen.dart';
import 'package:food_deliver_app/login&regester_screens/login_screen.dart';
import 'package:food_deliver_app/login&regester_screens/register_user_screen.dart';
import 'package:food_deliver_app/on_bressd_screen.dart';

void main() {
  runApp(food_deliver_app());
}

class food_deliver_app extends StatelessWidget {
  const food_deliver_app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/on_pressd_screen',
      routes: {
        '/on_pressd_screen': (context) => const onpressed_screen(),
        '/login_screen': (context) => const login_screen(),
        '/register_user_screen': (context) => const register_user_screen(),
        '/forgetpasswrod_screen': (context) => const forget_password(),
        '/home_screen': (context) => const home_screen(),
        '/bottom_screen': (context) => const bottom_screen(),
      },
    );
  }
}
