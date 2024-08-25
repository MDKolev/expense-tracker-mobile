import 'package:expense_tracker_mobile/screens/custom_textfield.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              "Welcome back! Access your expense tracker and stay organised",
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
          Container(
            child: Text("Forgot password?",
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                )),
                alignment: Alignment.centerLeft,
                width: 270,
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Center(
              child: Text(
                "Login Now",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}