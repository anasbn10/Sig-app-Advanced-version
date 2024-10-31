import 'package:flutter/material.dart';
import 'package:aan_app/widgets/myButton.dart';
import 'package:aan_app/widgets/colors.dart';

class SignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 100.0),
                child: SizedBox(
                  height: 200,
                  child: Image(
                    image: AssetImage('images/logo.png'),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            const SizedBox(
              height: 50.0,
              width: 300.0,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '  Enter your Name',
                ),
              ),
            ),
            const SizedBox(
              height: 19.0,
            ),
            const SizedBox(
              height: 50.0,
              width: 300.0,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '  Enter your Password',
                ),
                obscureText: true,
              ),
            ),
            const SizedBox(
              height: 19.0,
            ),
            const SizedBox(
              height: 50.0,
            ),
            MyButton(
                color: color2,
                title: 'Sign in',
                textColor: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, 'GetStartedPage');
                }),
          ],
        ),
      ),
    );
  }
}
