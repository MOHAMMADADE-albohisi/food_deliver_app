import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class login_screen extends StatefulWidget {
  const login_screen({Key? key}) : super(key: key);

  @override
  State<login_screen> createState() => _login_screenState();
}

// ignore: camel_case_types
class _login_screenState extends State<login_screen> {
  //
  late TextEditingController _number;
  late TextEditingController _password;
  late TapGestureRecognizer _forgetpasswrod;

  String? _numbererror;
  String? _passworderror;
  final bool _passwords = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _number = TextEditingController();
    _password = TextEditingController();
    _forgetpasswrod = TapGestureRecognizer();
    _forgetpasswrod.onTap = createnewacountclick;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _number.dispose();
    _password.dispose();
    _forgetpasswrod.dispose();
    super.dispose();
  }

  void createnewacountclick() {
    Navigator.pushNamed(context, '/forgetpasswrod_screen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/image1.png',
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
                colors: [
                  Colors.transparent,
                  Color(0xFF000000),
                ],
              ),
            ),
          ),
          ListView(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 99, vertical: 109),
                // ignore: avoid_unnecessary_containers
                child: Container(
                  child: Column(
                    children: [
                      Image.asset('images/image2.png'),
                      const SizedBox(height: 15),
                      Text(
                        'Food Deliver',
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: const Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 51),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: _number,
                  style: GoogleFonts.outfit(
                    color: const Color(0xFFFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white38,
                    constraints: BoxConstraints(
                      minHeight: 50,
                      maxHeight: _numbererror == null ? 56 : 81,
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                    hintText: 'Phone',
                    hintStyle:
                        GoogleFonts.nunito(color: const Color(0xFFFFFFFF)),
                    hintMaxLines: 1,
                    prefixIcon: Image.asset(
                      'images/image3.png',
                      color: const Color(0xFFFFFFFF),
                    ),
                    errorText: _numbererror,
                    errorStyle: GoogleFonts.outfit(),
                    errorMaxLines: 1,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey.shade700,
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade700,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.red.shade700,
                        width: 1,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.red.shade700,
                        width: 1,
                      ),
                    ),
                  ),
                  minLines: null,
                  maxLines: null,
                  expands: true,
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 51),
                child: TextField(
                  keyboardType: TextInputType.text,
                  controller: _password,
                  obscureText: _passwords,
                  style: GoogleFonts.openSans(
                    color: const Color(0xFFFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white38,
                    constraints: BoxConstraints(
                      minHeight: 60,
                      maxHeight: _passworderror == null ? 60 : 81,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                    ),
                    hintText: 'Password',
                    hintStyle:
                        GoogleFonts.openSans(color: const Color(0xFFFFFFFF)),
                    hintMaxLines: 1,
                    prefixIcon: const Icon(Icons.lock_open),
                    errorText: _passworderror,
                    errorStyle: GoogleFonts.openSans(),
                    errorMaxLines: 1,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.red.shade700,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.red.shade700,
                      ),
                    ),
                  ),
                  minLines: 1,
                  maxLines: 1,
                  expands: false,
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () => createnewacountclick(),
                      child: Text(
                        'Forgot password?',
                        style: GoogleFonts.openSans(
                          color: const Color(0xFFFFFFFF),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 51),
                child: ElevatedButton(
                  onPressed: () => performaLogin(),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFF88600),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: const Size(
                      double.infinity,
                      50,
                    ),
                  ),
                  child: Text(
                    'LOGIN',
                    style: GoogleFonts.openSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 70),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 120),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ('/register_user_screen'));
                    },
                    child: Text(
                      'Create new account',
                      style: GoogleFonts.openSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFF88600),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }

  void performaLogin() {
    if (checkData()) {
      login();
    }
  }

  bool checkData() {
    if (_number.text.isNotEmpty && _password.text.isNotEmpty) {
      _controolervalue();
      return true;
    }
    _controolervalue();

    return false;
  }

  void _controolervalue() {
    setState(() {
      _numbererror = _number.text.isEmpty ? 'Enter Phone address' : null;
      _passworderror = _password.text.isEmpty ? 'Enter password' : null;
    });
  }

  void login() {
    Navigator.pushNamed(context, '/bottom_screen');
  }
}
