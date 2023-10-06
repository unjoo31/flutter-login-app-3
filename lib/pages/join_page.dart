import 'package:flutter/material.dart';
import 'package:login_app_3/components/custom_join_form.dart';
import 'package:login_app_3/components/logo.dart';
import 'package:login_app_3/size.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (ListView(
          children: [
            SizedBox(height: xlarge_gap),
            Logo("Join"),
            CustomJoinForm(),
          ],
        )),
      ),
    );
  }
}
