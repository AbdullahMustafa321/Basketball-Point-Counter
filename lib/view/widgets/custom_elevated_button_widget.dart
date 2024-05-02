import 'package:flutter/material.dart';
import '../../constant/colors.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
  const CustomElevatedButtonWidget({super.key, required this.text, this.onPressed});
final String text;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.toDouble()))),
        onPressed: onPressed,
        child:  Text(
          text,
          style: const TextStyle(color: Colors.white),
        ));
  }
}
