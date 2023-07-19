import 'package:flutter/material.dart';
import 'package:minimal_login/components/signin_button.dart';
import 'package:minimal_login/components/text_fields.dart';

import 'components/square_tile.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 90,
            ),
            const Center(
              child: Icon(Icons.lock, size: 80),
            ),
            const SizedBox(
              height: 60,
            ),
            Text(
              'Welcome back, you\'ve been missed !',
              style: TextStyle(color: Colors.grey[500], fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            const LoginTextField(
              hintText: 'Username',
              obscureText: false,
            ),
            const SizedBox(height: 8),
            const LoginTextField(
              hintText: 'Password',
              obscureText: true,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 260, top: 5),
              child: Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.grey[500], fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const SignInButtton(),
            const SizedBox(
              height: 55,
            ),
            Row(
              children: [
                const Expanded(
                    child: Divider(
                  indent: 30,
                  endIndent: 8,
                )),
                Text(
                  'Or continue with',
                  style: TextStyle(color: Colors.grey.shade400, fontWeight: FontWeight.bold),
                ),
                const Expanded(
                    child: Divider(
                  indent: 8,
                  endIndent: 30,
                ))
              ],
            ),
            const SizedBox(
              height: 55,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SquareTile(
                  imagePath: 'lib/images/google.png',
                ),
                SizedBox(
                  width: 10,
                ),
                SquareTile(imagePath: 'lib/images/apple.png'),
              ],
            ),

            const SizedBox(height: 55,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a member?',style: TextStyle(color: Colors.black38,fontWeight: FontWeight.bold)),
                SizedBox(width: 4,),
                Text('Register now',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold))
              ],
            ),
          ],
        ),
      )),
    );
  }
}
