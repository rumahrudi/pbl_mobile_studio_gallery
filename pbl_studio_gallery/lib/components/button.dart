import 'package:flutter/material.dart';
import 'package:pbl_studio_gallery/theme/colors.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const MyButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: logoColor,
          borderRadius: BorderRadius.circular(40),
        ),
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // text
            Text(
              text,
              style: TextStyle(
                color: Color.fromRGBO(249, 245, 240, 1.0),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            // icon
            Icon(
              Icons.arrow_forward,
              color: Color.fromRGBO(249, 245, 240, 1.0),
            )
          ],
        ),
      ),
    );
  }
}
