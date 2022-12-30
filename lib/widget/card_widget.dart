import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var a = MediaQuery.of(context).size;
    print(a.height / 3.2);
    print("card");
    return Container(
      padding: const EdgeInsets.all(3),
      width: a.height / 3.2,
      height: a.height / 2.4463,
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
                  height: a.height / 43.3, //20
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
                  children: [
                    Image(
                      height: a.height / 144.3, //6
                      width: 6,
                      image: const AssetImage("assets/images/colored_dot.png"),
                    ),
                    const SizedBox(width: 2),
                    Image(
                      height: a.height / 144.3,
                      width: 6,
                      image: const AssetImage("assets/images/empty_dot.png"),
                    ),
                    const SizedBox(width: 2),
                    Image(
                      height: a.height / 144.3,
                      width: 6,
                      image: const AssetImage("assets/images/empty_dot.png"),
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
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 8.0, top: 4),
              child: Text(
                "Diabetes is common in the summer time and so on and so fort the disease has this this issues. It is common in the summer time and so on and so fort the ...",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          SizedBox(
            height: a.height / 144.3, //6
          ),
          //Last Row
          SizedBox(
            height: a.height / 16.03, //54
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xff919cb3),
                    ),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Image(
                        image: AssetImage("assets/images/heart.png"),
                      ),
                      Text("131 bmp"),
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xff919cb3),
                    ),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Image(
                        image: AssetImage("assets/images/fire.png"),
                      ),
                      Text("244 Kcal"),
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xff919cb3),
                    ),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Image(
                        image: AssetImage("assets/images/heart.png"),
                      ),
                      Text("131 BMP"),
                    ],
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
