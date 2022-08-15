import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class register_user_screen extends StatefulWidget {
  const register_user_screen({Key? key}) : super(key: key);

  @override
  State<register_user_screen> createState() => _register_user_screenState();
}

// ignore: camel_case_types
class _register_user_screenState extends State<register_user_screen> {
  late TextEditingController _number;
  late TextEditingController _password;
  late TextEditingController _passwordcon;
  late TextEditingController _name;
  late TapGestureRecognizer _forgetpasswrod;

  String? _numbererror;
  String? _nameerror;
  String? _passworderror;
  String? _passwordconerror;
  final bool _passwords = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _number = TextEditingController();
    _name = TextEditingController();
    _password = TextEditingController();
    _passwordcon = TextEditingController();
    _forgetpasswrod = TapGestureRecognizer();
    _forgetpasswrod.onTap = createnewacountclick;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _number.dispose();
    _name.dispose();
    _password.dispose();
    _passwordcon.dispose();
    _forgetpasswrod.dispose();
    super.dispose();
  }

  void createnewacountclick() {
    Navigator.pushNamed((context), '/login_screen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Image.asset(
            'images/image4.png',
            width: double.infinity,
            fit: BoxFit.cover,
            height: double.infinity,

          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentDirectional.topCenter,
                end: AlignmentDirectional.center,
                colors: [
                  Colors.transparent,
                  Colors.black54,
                ],
              ),
            ),
          ),
          ListView(
            children: [
              const SizedBox(height: 99),
              Container(
                width: 143,
                height: 143,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white60,
                ),
                child: Image.asset('images/image5.png'),
              ),
              const SizedBox(height: 69),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 51),
                child: TextField(
                  keyboardType: TextInputType.text,
                  controller: _name,
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
                      maxHeight: _nameerror == null ? 56 : 81,
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                    hintText: 'Name',
                    hintStyle:
                        GoogleFonts.nunito(color: const Color(0xFFFFFFFF)),
                    hintMaxLines: 1,
                    prefixIcon: const Icon(
                      Icons.person_outlined,
                      color: Color(0xFFFFFFFF),
                    ),
                    errorText: _nameerror,
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
                    prefixIcon: const Icon(
                      Icons.lock_open,
                      color: Color(0xFFFFFFFF),
                    ),
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
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 51),
                child: TextField(
                  keyboardType: TextInputType.text,
                  controller: _passwordcon,
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
                      maxHeight: _passwordconerror == null ? 60 : 81,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                    ),
                    hintText: 'confirm password',
                    hintStyle:
                        GoogleFonts.openSans(color: const Color(0xFFFFFFFF)),
                    hintMaxLines: 1,
                    prefixIcon: const Icon(
                      Icons.lock_open,
                      color: Color(0xFFFFFFFF),
                    ),
                    errorText: _passwordconerror,
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
              const SizedBox(height: 51),
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
                    'Registration',
                    style: GoogleFonts.openSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 65),
              Center(
                child: RichText(
                  text: TextSpan(
                      text: 'Do you already have an account? ',
                      style: GoogleFonts.openSans(
                        fontSize: 12,
                        color: const Color(0xFFFFFFFF),
                      ),
                      children: [
                        TextSpan(
                            text: ' Login',
                            recognizer: _forgetpasswrod,
                            style: GoogleFonts.openSans(
                              color: const Color(0xFFF88600),
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              decorationStyle: TextDecorationStyle.solid,
                              decoration: TextDecoration.underline,
                            ))
                      ]),
                ),
              )
            ],
          )
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
    if (_number.text.isNotEmpty &&
        _name.text.isNotEmpty &&
        _password.text.isNotEmpty &&
        _passwordcon.text.isNotEmpty) {
      _controolervalue();
      return true;
    }
    _controolervalue();
    return false;
  }

  void _controolervalue() {
    setState(
      () {
        _numbererror = _number.text.isEmpty ? 'Number field is required' : null;
        _nameerror = _name.text.isEmpty ? 'Name field is required' : null;
        _passworderror =
            _password.text.isEmpty ? 'password field is required' : null;
        _passwordconerror = _passwordcon.text.isEmpty
            ? 'confirm password field is required'
            : null;
      },
    );
  }

  void login() {
    //
  }
}
