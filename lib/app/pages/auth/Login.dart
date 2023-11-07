import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gv_key_project/app/components/auth_widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/ic_app_transparent.png'),
          Text(
            'Sign In to continue',
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 20),
          ),
          authForm(),
          authForm(),
          ElevatedButton(
            onPressed: () {},
            child: Text('Login'),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, foregroundColor: Colors.black),
          ),
          TextButton(onPressed: () {}, child: Text('Forgot Password?')),
          TextButton(
              onPressed: () {}, child: Text('Dont have an account? Sign Up'))
        ],
      ),
    ));
  }
}
