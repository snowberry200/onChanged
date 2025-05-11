import 'package:flutter/material.dart';
import 'package:onchange/elevatedbutton.dart';
import 'package:onchange/testwidget.dart';
import 'package:onchange/textformfield.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String newFormText = '';
  String getNewFormText() {
    return newFormText;
  }

  String text = 'Data Value';

  @override
  Widget build(BuildContext context) {
    List<Map<String, Widget>> widgets = [
      {'TestWidget': TestWidget(text: text)},
      {
        'TestFormFieldWidget': EntryField(
          onChanged: (newText) {
            newFormText = newText;
          },
        ),
      },
      {
        'ElevatedButtonWidget': Ebutton(
          onPressed: () {
            setState(() {
              text = getNewFormText();
            });
          },
        )
      },
    ];
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widgets.map((widget) {
            return Column(
              children: widget.values
                  .map((w) => SizedBox(
                        height: 100,
                        width: 300,
                        child: w,
                      ))
                  .toList(),
            );
          }).toList(),
        ),
      ),
      // )
    );
  }
}
