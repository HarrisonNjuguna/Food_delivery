import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/util/assistant.dart';
import '../widgets/customTextInput.dart';

class ResetPasswordScreen extends StatelessWidget {
  static const routeName = "/resetpasswordscreen";
  ResetPasswordScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Assistant.getScreenWidth(context),
        height: Assistant.getScreenWidth(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 30,
            ),
            child: Column(
              children: [
                Text(
                  'Reset Password',
                  style: Assistant.getTheme(context).headline6,
                ),
                const Spacer(),
                const Text(
                  'Please enter your email to recieve a passsword reset link',
                  textAlign: TextAlign.center,
                ),
                const Spacer(flex: 2),
                const CustomTextInput(hintText: 'Email Address'),
                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Send"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
