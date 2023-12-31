import 'package:flutter/material.dart';
import 'package:pbl_studio_gallery/components/my_button.dart';
// import 'package:pbl_studio_gallery/components/button.dart';
import 'package:pbl_studio_gallery/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign in user

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(
                height: 50,
              ),
              // logo
              // const Icon(
              //   Icons.lock,
              //   color: Color.fromRGBO(244, 153, 26, 1.0),
              //   size: 100,
              // ),
              Image.asset(
                'lib/images/logo.png',
                width: 150,
                height: 150,
              ),
              const SizedBox(
                height: 50,
              ),
              // welcome back

              Text(
                'Welcome Back',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(
                height: 50,
              ),
              // username
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obsecureText: false,
              ),

              const SizedBox(
                height: 10,
              ),
              // passsword
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obsecureText: true,
              ),

              const SizedBox(
                height: 10,
              ),
              // forgot pasword
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password ?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 25,
              ),
              // sign in button
              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(
                height: 50,
              ),
              // not a memeber ? register now

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member ?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Register Now',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
