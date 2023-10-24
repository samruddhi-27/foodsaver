import 'package:flutter/material.dart';
import 'package:foodsaver/components/colors.dart';
import 'package:google_fonts/google_fonts.dart';


class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;


  const MyButton({Key? key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration:  BoxDecoration(
          color: slight,
          borderRadius: BorderRadius.circular(40.0),
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //text
            Text(text,style: GoogleFonts.dmSerifDisplay(
              fontSize: 20,
              color: Colors.white,
            ),
            ),
            const SizedBox(width: 10),
            //icon
            const Icon(Icons.arrow_forward,
              color: Colors.white,
            ),
          ],
        ) ,
      ),
    );
  }
}