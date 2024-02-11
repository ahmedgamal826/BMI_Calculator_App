import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  CustomTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.label,
    required this.validatorMessage,
  });

  TextEditingController? controller = TextEditingController();
  final String hintText;
  final String label;
  final String validatorMessage;
  bool obscurePassword = false;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
          controller: widget.controller,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon: widget.label == 'Email'
                  ? const Icon(
                      Icons.mail,
                      color: Colors.black,
                    )
                  : const Icon(
                      Icons.password,
                      color: Colors.black,
                    ),
              hintText: widget.hintText,
              label: Text(widget.label),
              suffixIcon: widget.label == 'Password'
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          widget.obscurePassword = !widget.obscurePassword;
                        });
                      },
                      icon: const Icon(Icons.remove_red_eye))
                  : const Text('')),
          validator: (value) {
            if (value!.isEmpty) return widget.validatorMessage;
          },
          keyboardType: widget.label == 'Email'
              ? TextInputType.emailAddress
              : TextInputType.text,
          obscureText: widget.label == 'Password'
              ? !widget.obscurePassword
              : widget.obscurePassword),
    );
  }
}
