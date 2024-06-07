import 'package:flutter/material.dart';
import 'package:ledger/widgets/account_textfield.dart';
import 'package:ledger/widgets/button_widget.dart';
import 'package:ledger/widgets/password.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
      ),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * .17,
            ),
            const Text(
              'Register',
              style: TextStyle(
                fontSize: 29,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              'Create your new account',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(179, 104, 103, 103)),
            ),
            SizedBox(
              height: screenHeight * .06,
            ),
            AccountTextfield(hintText: 'Full Name', prefixIcon: Icons.person),
            SizedBox(
              height: screenHeight * .03,
            ),
            AccountTextfield(hintText: 'email', prefixIcon: Icons.mail),
            SizedBox(
              height: screenHeight * .03,
            ),
            PasswordTextField(),
            SizedBox(
              height: screenHeight * .04,
            ),
            ButtonWidget(text: 'Sign Up'),
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
          ],
        ),
      ),
    );
  }
}
