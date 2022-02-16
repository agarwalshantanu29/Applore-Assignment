import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'start.dart';
import 'authentication_service.dart';

class InputField extends StatefulWidget {
  const InputField({Key? key}) : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  AuthenticationService authenticationService =
      AuthenticationService(FirebaseAuth.instance);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: const BoxDecoration(
              border: Border(
            bottom: BorderSide(color: Colors.grey),
          )),
          child: TextField(
            controller: _emailController,
            onChanged: (val) {
              print(val);
            },
            decoration: const InputDecoration(
                hintText: "Enter your email",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: const BoxDecoration(
              border: Border(
            bottom: BorderSide(color: Colors.grey),
          )),
          child: TextField(
            controller: _passwordController,
            onChanged: (val) {
              print(val);
            },
            decoration: const InputDecoration(
                hintText: "Enter your password",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'Forgot Password?',
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(
          height: 40,
        ),
        // Button(email: _emailController.text,password: _passwordController.text,),
        GestureDetector(
          onTap: () {
            print('widget.email${_emailController.text}');
            authenticationService.signUp(
                email: _emailController.text,
                password: _passwordController.text);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Start()),
            );
          },
          child: Container(
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 50),
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
