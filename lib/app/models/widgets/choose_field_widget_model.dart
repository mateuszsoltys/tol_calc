import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import '../../core/enums.dart';

class ChooseField extends StatelessWidget {
  final String fieldName;
  final List<DropdownMenuItem<Enum>>? items;
  const ChooseField({Key? key, required this.fieldName, required this.items})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      // margin: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromRGBO(14, 0, 68, 0.37)),
      child: Column(children: [
        const SizedBox(height: 10),
        Text(fieldName.toUpperCase(),
            style: GoogleFonts.habibi(
                textStyle: const TextStyle(color: Colors.white))),
        DropdownButton(items: items, onChanged: (val) {}),
        const SizedBox(height: 10)
      ]),
    );
  }
}
