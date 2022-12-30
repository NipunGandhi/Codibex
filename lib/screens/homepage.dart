import 'package:flutter/material.dart';

import '../Widget/my_report_bar_left.dart';
import '../Widget/my_report_bar_right.dart';
import '../widget/card_widget.dart';
import '../widget/fake_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var a = MediaQuery.of(context);
    print(a.size.height / 3.126353790613718);
    print("abc");
    return Scaffold(
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
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            height: a.size.height / 3.126353790613718,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    SizedBox(
                      height: 2.5,
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
          //Menu Icon
          Positioned(
            left: 45,
            top: ((a.size.height / 3.126353790613718) / 3.97),
            child: Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: const Color(0xff919cb3)),
                color: const Color(0xffffffff),
              ),
              child: Image.asset("assets/images/menuIcon.png"),
            ),
          ),
          //Lower UI
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: (a.size.height / 3)),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 1.5, 16, 0),
                      width: 37,
                      height: 1,
                      decoration: const BoxDecoration(
                        color: Color(0xff919CB3),
                      ),
                    ),
                    const Text("Swipe to check your health risks"),
                    Container(
                      margin: const EdgeInsets.fromLTRB(16, 1.5, 0, 0),
                      width: 37,
                      height: 1,
                      decoration: const BoxDecoration(
                        color: Color(0xff919CB3),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: a.size.height / 40.5,
                ),
                //Stack of cards
                SizedBox(
                  height: a.size.height - (a.size.height / 1.74),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 15,
                        left: 20 + (270 - (a.size.height / 3.2)) / 2,
                        child: Transform.rotate(
                          angle: -0.14,
                          child: FakeCardWidget(height: a.size.height / 2.858),
                        ),
                      ),
                      Positioned(
                        top: 8,
                        left: 40 + (270 - (a.size.height / 3.2)) / 2,
                        child: Transform.rotate(
                          angle: -0.08,
                          child: FakeCardWidget(height: a.size.height / 2.681),
                        ),
                      ),
                      Positioned(
                        top: 15,
                        right: 25 + (270 - (a.size.height / 3.2)) / 2,
                        child: Transform.rotate(
                          angle: 0.14,
                          child: FakeCardWidget(height: a.size.height / 2.858),
                        ),
                      ),
                      Positioned(
                        top: 8,
                        right: 45 + (270 - (a.size.height / 3.2)) / 2,
                        child: Transform.rotate(
                          angle: 0.08,
                          child: FakeCardWidget(height: a.size.height / 2.681),
                        ),
                      ),
                      Positioned(
                        right: 75 + (270 - (a.size.height / 3.2)) / 2,
                        child: CardWidget(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: a.size.height / 45.5,
                ),

                //Book Lab Test, Already Tested Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: a.size.width / 3.39,
                      height: a.size.height / 17.32,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffaf3aff)),
                        color: const Color(0xffaf3aff),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Center(
                        child: Text(
                          'Book Lab Test',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.4079999924,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: a.size.width / 3.39,
                      height: a.size.height / 17.32,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffaf3aff)),
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Center(
                        child: Text(
                          'Already Tested',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.4079999924,
                            color: Color(0xff324154),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: a.size.height / 45.5,
                ),

                //Buttons
                Material(
                  elevation: 10,
                  child: Container(
                    height: a.size.height / 14.43,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: a.size.width / 2,
                          decoration: const BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                color: Color(0xffAF3AFF),
                                width: 1.0,
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage("assets/images/health.png"),
                                height: 20,
                                width: 15.88,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'My Health',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5,
                                  letterSpacing: -0.4079999924,
                                  color: Color(0xff324154),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 60,
                          width: a.size.width / 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage("assets/images/consult.png"),
                                height: 20,
                                width: 15.88,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Consultation',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5,
                                  letterSpacing: -0.4079999924,
                                  color: Color(0xff919CB3),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
