import 'package:expense_tracker_mobile/screens/custom_textfield.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            width: 300,
            height: 90,
            child: Text(
              "Register now and track all of your expenses for free",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 20.0,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(0.0, 10.0),
                    blurRadius: 30.0,
                    color: Colors.blue.shade900,
                  ),
                  Shadow(
                    offset: Offset(0.0, 5.0),
                    blurRadius: 20.0,
                    color: Colors.blue.shade900,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          CustomTextField(
            controller: emailController,
            name: "Email",
            prefixIcon: Icons.email_outlined,
            inputType: TextInputType.name,
            textCapitalization: TextCapitalization.words,
          ),
          CustomTextField(
            obscureText: true,
            controller: passController,
            name: "Password",
            prefixIcon: Icons.lock_outline,
            inputType: TextInputType.name,
            textCapitalization: TextCapitalization.words,
          ),
          SizedBox(
            height: 120,
          ),
          Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Center(
              child: Text(
                "Register Now",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
