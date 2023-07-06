import 'package:flutter/material.dart';
import '../utilities/constants.dart';

class ActionButton extends StatelessWidget {
  ActionButton({required this.buttonTitle, required this.onPress});

  final Function onPress;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 3.0,
        backgroundColor: kActionButtonColor,
        shadowColor: kActionButtonHighlightColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () => onPress,
      child: Text(
        buttonTitle,
        style: kActionButtonTextStyle,
      ),
    );
  }
}
