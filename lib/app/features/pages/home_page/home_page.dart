import 'package:flutter/material.dart';
import 'package:tolcalc/app/core/enums.dart';
import 'package:tolcalc/app/models/widgets/choose_field_widget_model.dart';

class HomePage extends StatelessWidget {
  final String title;
  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: RadialGradient(
              colors: [Color(0xff6285BA), Color(0xff022F73)], radius: 1)),
      child: Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text(title),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ChooseField(
                        value: null,
                        fieldName: 'norma',
                        items: Norms.values.map((Norms norm) {
                          return DropdownMenuItem<Norms>(
                              value: norm, child: Text(norm.label));
                        }).toList(),
                      ),
                      ChooseField(
                        value: null,
                        fieldName: 'klasa',
                        items: NormClasses.values.map((NormClasses normClass) {
                          return DropdownMenuItem<NormClasses>(
                              value: normClass, child: Text(normClass.label));
                        }).toList(),
                      )
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
