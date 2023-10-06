import 'package:flutter/material.dart';
import 'package:login_app_3/components/custom_form.dart';
import 'package:login_app_3/components/logo.dart';
import 'package:login_app_3/size.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (ListView(
          children: [
            SizedBox(height: xlarge_gap),
            Logo("Login"),
            Custom_Form(),
          ],
        )),
      ),
    );
  }
}
