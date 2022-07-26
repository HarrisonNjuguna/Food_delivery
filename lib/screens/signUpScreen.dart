import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/screens/loginScreen.dart';
import 'package:fooddeliveryapp/styling/colors.dart';
import 'package:fooddeliveryapp/util/assistant.dart';
import 'package:fooddeliveryapp/widgets/customTextInput.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/signUpScreen';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Assistant.getScreenWidth(context),
        height: Assistant.getScreenHeight(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            child: Column(
              children: [
                Text(
                  'Sign up',
                  style: Assistant.getTheme(context).headline6,
                ),
                const Spacer(),
                const Text('Add your details to sign up'),
                const Spacer(),
                const CustomTextInput(hintText: "Name"),
                const Spacer(),
                const CustomTextInput(hintText: "Email Address"),
                const Spacer(),
                const CustomTextInput(hintText: "Phone number"),
                const Spacer(),
                const CustomTextInput(hintText: "Password"),
                const Spacer(),
                const CustomTextInput(hintText: "Confirm password"),
                const Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign up',
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(LoginScreen.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Already have an Account?'),
                      Text(
                        'Login',
                        style: TextStyle(
                            color: AppColor.orange,
                            fontWeight: FontWeight.bold),
                      )
                    ],
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
