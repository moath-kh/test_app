import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadD extends StatelessWidget {
  const HeadD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              //shape: BoxShape.circle,

              color: Colors.blue,
              borderRadius: BorderRadius.circular(20.0),
            ),
            margin: const EdgeInsets.all(30),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            'Mokhtabary'.toUpperCase(),
            style: GoogleFonts.pacifico(color: Colors.amber, fontSize: 30),
          )
        ],
      ),
    );
  }
}
