import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gv_key_project/app/components/auth_widgets.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Create Account',
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 20),
          ),
          Text('Enter your valid credentials to continue',
              style: GoogleFonts.poppins(color: Colors.white, fontSize: 12)),
          authForm(),
          authForm(),
          ElevatedButton(
            onPressed: () {},
            child: Text('Login'),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, foregroundColor: Colors.black),
          ),
        ],
      ),
    ));
  }
}
