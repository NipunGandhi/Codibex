import 'package:codibex/Widget/report_widget.dart';
import 'package:flutter/material.dart';

class MyReportBarR extends StatelessWidget {
  const MyReportBarR({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        ReportWidget(
          status: 'Report Ready',
          problem: 'Skin Rash',
          boxColor: Color(0xffF6FCFA),
          borderColor: Color(0xff4EA48E),
        ),
        ReportWidget(
          status: 'In Progress',
          problem: 'Diabetes',
          boxColor: Color(0xffFFFCF3),
          borderColor: Color(0xffF9A81F),
        ),
      ],
    ));
  }
}
