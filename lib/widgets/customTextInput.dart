import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/styling/colors.dart';

class CustomTextInput extends StatelessWidget {
  const CustomTextInput({
    required String hintText,
    Key? key,
  })  : _hintText = hintText,
        super(key: key);

  final String _hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: const ShapeDecoration(
        color: AppColor.placeholderBg,
        shape: StadiumBorder(),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: _hintText,
          hintStyle: TextStyle(
            color: AppColor.Placeholder,
          ),
          contentPadding: EdgeInsets.only(left: 40),
        ),
      ),
    );
  }
}
