// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseField extends StatelessWidget {
  final String fieldName;
  final List<DropdownMenuItem<Enum>>? items;
  final Object? value;
  const ChooseField({
    Key? key,
    required this.fieldName,
    required this.items,
    required this.value,
  }) : super(key: key);

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
        DropdownButton(value: value, items: items, onChanged: (val) {}),
        const SizedBox(height: 10)
      ]),
    );
  }
}
