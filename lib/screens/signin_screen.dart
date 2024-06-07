import 'package:flutter/material.dart';
import 'package:ledger/screens/register_screen.dart';
import 'package:ledger/widgets/account_textfield.dart';
import 'package:ledger/widgets/button_widget.dart';
import 'package:ledger/widgets/password.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Image.asset('assets/money2.jpg'),
              Positioned(
                top: screenHeight * .04,
                left: screenWidth * .09,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Container(
            width: screenWidth * 1,
            height: screenHeight * .64,
            color: Colors.white,
            child: Column(
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: 29,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: screenHeight * .01,
                ),
                const Text(
                  'Login to your account',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(179, 104, 103, 103),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: screenHeight * .05,
                ),
                AccountTextfield(
                  hintText: 'Full Name',
                  prefixIcon: Icons.person,
                ),
                SizedBox(
                  height: screenHeight * .03,
                ),
                PasswordTextField(),
                SizedBox(
                  height: screenHeight * .02,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: screenWidth * .61,
                    ),
                    const Text(
                      'Forgot Password ?',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: screenHeight * .15,
                ),
                ButtonWidget(text: 'Login'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account ?',
                      style: TextStyle(
                        color: Color.fromARGB(179, 104, 103, 103),
                        fontSize: 13,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterScreen()));
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline,
                            color: Colors.black,
                          ),
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
