import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class onpressed_screen extends StatefulWidget {
  const onpressed_screen({Key? key}) : super(key: key);

  @override
  State<onpressed_screen> createState() => _onpressed_screenState();
}

class _onpressed_screenState extends State<onpressed_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/image14.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              const SizedBox(height: 123),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 167),
                  child: Image.asset(
                    'images/image15.png',
                  )),
              const SizedBox(height: 32),
              Text(
                'Welcome, Jennifer!',
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: const Color(0xFF576366),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 51),
                  child: Column(
                    children: [
                      Text(
                        'Food Delivery is your faithful assistant in the ',
                        style: GoogleFonts.openSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF576366),
                        ),
                      ),
                      Text(
                        'fight against hunger!',
                        style: GoogleFonts.openSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF576366),
                        ),
                      )
                    ],
                  )),
              const SizedBox(height: 371),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login_screen');
                },
                child: Container(
                  width: 274,
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 14),
                    child: Text(
                      'Lets go!',
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: const Color(0xFFF88600),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
