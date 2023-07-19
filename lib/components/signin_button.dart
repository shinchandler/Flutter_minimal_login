import 'package:flutter/material.dart';

class SignInButtton extends StatelessWidget {
  const SignInButtton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        // height: 50,
        // width: 370,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8)
        ),
        child: const Center(child: Text('Sign In',style: TextStyle(color: Colors.white,fontSize: 16),)),
      ),
    );
  }
}