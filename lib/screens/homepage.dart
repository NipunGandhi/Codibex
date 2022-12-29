import 'package:flutter/material.dart';

import '../Widget/my_report_bar_left.dart';
import '../Widget/my_report_bar_right.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            //Background
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-0.691, 0.466),
                  end: Alignment(0.895, -1.152),
                  colors: <Color>[
                    Color(0xffF6E8FF),
                    Color(0xffDDFDFF),
                  ],
                ),
              ),
            ),
            //Icons,Name,Message and reports
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              height: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/bitmoji.png"),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/bell.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 2.5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hi Rahul Singh',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.408,
                          fontStyle: FontStyle.normal,
                          color: Color(0xff4E5766),
                        ),
                      ),
                      Text(
                        'Hope you’re doing great today!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.408,
                          color: Color(0xff324154),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 90,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffdadada),
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(16),
                      ),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: const [
                        MyReportBarL(),
                        VerticalDivider(
                          width: 5,
                          thickness: 1,
                          color: Color(0xffdadada),
                        ),
                        MyReportBarR(),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              left: 44,
              top: 38,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.5),
                  border: Border.all(color: const Color(0xff919cb3)),
                  color: const Color(0xffffffff),
                ),
                child: Image.asset("assets/images/menuIcon.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
