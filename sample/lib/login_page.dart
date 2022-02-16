import 'package:flutter/material.dart';
import "header.dart";
import 'input_wrapper.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.deepPurple,
          Colors.purple,
          Colors.purpleAccent,
        ])),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  const Header(),
                  Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              topRight: Radius.circular(60),
                            )),
                        child: const InputWrapper(),
                      ))
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
