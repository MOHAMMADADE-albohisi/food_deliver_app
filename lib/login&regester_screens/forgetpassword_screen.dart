import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class forget_password extends StatefulWidget {
  const forget_password({Key? key}) : super(key: key);

  @override
  State<forget_password> createState() => _forget_passwordState();
}

class _forget_passwordState extends State<forget_password> {
  late TextEditingController _number;
  String? _numbererror;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _number = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _number.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/image6.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          ListView(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                color: Colors.transparent,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login_screen');
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Image.asset('images/image7.png'),
                    SizedBox(height: 20.3),
                    Text(
                      'Forgot password',
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Write your phone number and we will send a',
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    Text(
                      'password recovery code.',
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    SizedBox(height: 26),
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
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 24),
                          hintText: 'Phone',
                          hintStyle: GoogleFonts.nunito(
                              color: const Color(0xFFFFFFFF)),
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
                    const SizedBox(height: 52),
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
                          'Send',
                          style: GoogleFonts.openSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
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
    if (_number.text.isNotEmpty) {
      _controolervalue();
      return true;
    }
    _controolervalue();

    return false;
  }

  void _controolervalue() {
    setState(() {
      _numbererror = _number.text.isEmpty ? 'Enter Phone address' : null;
    });
  }

  void login() {
    Navigator.pushNamed(context, '/login_screen');
  }
}
