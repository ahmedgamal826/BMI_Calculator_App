import 'package:bmi_calculator_app/widgets/custom_elevated_button.dart';
import 'package:bmi_calculator_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/bmi.png',
                  width: 150,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Login To BMI Calculator',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  validatorMessage: 'Email is required',
                  label: 'Email',
                  hintText: 'Enter Email',
                  controller: emailController,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  controller: passwordController,
                  hintText: 'Enter Password',
                  label: 'Password',
                  validatorMessage: 'Password us required',
                ),
                SizedBox(
                  height: 18,
                ),
                CustomElevatedButton(
                  formKey: _formKey,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
