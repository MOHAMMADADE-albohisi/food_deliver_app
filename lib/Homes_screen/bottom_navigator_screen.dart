import 'package:flutter/material.dart';
import 'package:food_deliver_app/Homes_screen/home_screen.dart';
import 'package:food_deliver_app/login&regester_screens/forgetpassword_screen.dart';
import 'package:food_deliver_app/login&regester_screens/login_screen.dart';
import 'package:food_deliver_app/login&regester_screens/register_user_screen.dart';
import 'package:food_deliver_app/models/bn_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class bottom_screen extends StatefulWidget {
  const bottom_screen({Key? key}) : super(key: key);

  @override
  State<bottom_screen> createState() => _bottom_screenState();
}

class _bottom_screenState extends State<bottom_screen> {
  int _int = 0;
  final List<Bnscreen> _bottom = <Bnscreen>[
    Bnscreen( widget: home_screen()),
    Bnscreen( widget: login_screen()),
    Bnscreen( widget: forget_password()),
    Bnscreen( widget: register_user_screen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bottom[_int].widget,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFFFFFFF),
        onTap: (int selectedPageIndex) {
          setState(() => _int = selectedPageIndex);
        },
        currentIndex: _int,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: const IconThemeData(
          color: Color(0xFFF88600),
        ),
        selectedLabelStyle: GoogleFonts.montserrat(
          fontWeight: FontWeight.bold,
        ),
        unselectedIconTheme: const IconThemeData(
          color: Color(0xFF566265),
        ),
        elevation: 50,
          items: const [
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.home_outlined),
                icon: Icon(Icons.home_outlined),
                label: ''),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.explore_outlined),
                icon: Icon(Icons.explore_outlined),
                label: ''),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.cake_outlined),
                icon: Icon(Icons.cake_outlined),
                label: ''),

            BottomNavigationBarItem(
                activeIcon: Icon(Icons.person_outlined
                ),
                icon: Icon(Icons.person_outlined),
                label: ''),
          ],
      ),
    );
  }
}
