import 'package:flutter/material.dart';

class FakeCardWidget extends StatelessWidget {
  const FakeCardWidget({
    Key? key,
    required this.height,
  }) : super(key: key);
  final double height;
  @override
  Widget build(BuildContext context) {
    var a = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(3),
      width: a.height / 3.2,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff919cb3)),
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color(0x14000000),
            offset: Offset(0, 9),
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(
            height: a.height / 6.66,
            width: a.height / 3.2,
            fit: BoxFit.fill,
            image: const AssetImage("assets/images/Card Pic.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8, bottom: 4),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                  width: 59,
                  height: 20,
                  decoration: BoxDecoration(
                    color: const Color(0xfffff5db),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      'Low Risk',
                      style: TextStyle(
                        fontFamily: 'Satoshi Variable',
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.4079999924,
                        color: Color(0xffcc9916),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: const [
                    Image(
                      height: 6,
                      width: 6,
                      image: AssetImage("assets/images/colored_dot.png"),
                    ),
                    SizedBox(width: 2),
                    Image(
                      height: 6,
                      width: 6,
                      image: AssetImage("assets/images/empty_dot.png"),
                    ),
                    SizedBox(width: 2),
                    Image(
                      height: 6,
                      width: 6,
                      image: AssetImage("assets/images/empty_dot.png"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              'Diabetes',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                letterSpacing: -0.4079999924,
                color: Color(0xff324154),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
