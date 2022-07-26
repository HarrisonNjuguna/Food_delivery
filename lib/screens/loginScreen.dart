import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/screens/resetPasswordScreen.dart';
import 'package:fooddeliveryapp/styling/colors.dart';
import 'package:fooddeliveryapp/screens/signUpScreen.dart';
import 'package:fooddeliveryapp/widgets/customTextInput.dart';
import '../util/assistant.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const routeName = '/loginScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Assistant.getScreenHeight(context),
        width: Assistant.getScreenWidth(context),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 30,
            ),
            child: Column(
              children: [
                Text(
                  'Login',
                  style: Assistant.getTheme(context).headline6,
                ),
                Spacer(),
                const Text('Add your details to login'),
                Spacer(),
                const CustomTextInput(
                  hintText: 'Email Address',
                ),
                Spacer(),
                const CustomTextInput(
                  hintText: 'Password',
                ),
                Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Login'),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(ResetPasswordScreen.routeName);
                  },
                  child: Text('Forgot password?'),
                ),
                Spacer(
                  flex: 2,
                ),
                Text('or Login with'),
                Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color(0xFF367FC0),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Assistant.getAssetName('fb.png', 'virtual'),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text('Login with Facebook')
                      ],
                    ),
                  ),
                ),
                Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color(0xFFDD4839),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Assistant.getAssetName('google.png', 'virtual'),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text('Login with Google')
                      ],
                    ),
                  ),
                ),
                Spacer(
                  flex: 4,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(SignUpScreen.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?"),
                      Text(
                        'Sign up',
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
