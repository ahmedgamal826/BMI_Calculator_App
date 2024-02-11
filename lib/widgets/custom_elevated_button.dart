import 'package:flutter/material.dart';

import '../screens/bmi_calculator_screen.dart';

class CustomElevatedButton extends StatefulWidget {
  CustomElevatedButton({super.key, required this.formKey});

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            textStyle: const TextStyle(fontSize: 30)),
        onPressed: () {
          setState(() {
            if (widget.formKey.currentState!.validate()) {
              // if email and password field is not empty
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => BmiCalculatorScreen(
                            weight: 0,
                          )));
            }
          });
        },
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Login',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ));
  }
}
