import 'package:flutter/material.dart';
import 'package:login_app_3/components/custom_text_form_field.dart';
import 'package:login_app_3/size.dart';
import 'package:login_app_3/user_repository.dart';
import 'package:login_app_3/validator_util.dart';

class CustomJoinForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final _email = TextEditingController();
  final _password = TextEditingController();
  final _username = TextEditingController();

  CustomJoinForm();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            CustomTextFormField(
                text: "Email",
                validate: validateEmail(),
                textController: _email),
            SizedBox(height: large_gap),
            CustomTextFormField(
                text: "Password",
                validate: validatePassword(),
                textController: _password,
                isPassword: true),
            SizedBox(height: large_gap),
            CustomTextFormField(
                text: "Username",
                validate: validatePassword(),
                textController: _username),
            SizedBox(height: large_gap),
            TextButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    UserRepository repo = UserRepository();
                    repo.join(_email.text.trim(), _password.text.trim(),
                        _username.text.trim());
                    Navigator.pushNamed(context, "/login");
                  }
                },
                child: Text("Join"))
          ],
        ));
  }
}
