import 'package:flutter/material.dart';

class ReportWidget extends StatelessWidget {
  const ReportWidget({
    Key? key,
    required this.problem,
    required this.status,
    required this.boxColor,
    required this.borderColor,
  }) : super(key: key);

  final String problem;
  final String status;
  final Color boxColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 7.5, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 12.5),
      decoration: BoxDecoration(
        color: boxColor,
        gradient: LinearGradient(
          stops: const [0.0279, 0.02],
          colors: [borderColor, boxColor],
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      height: 5,
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            problem,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              letterSpacing: -0.4079999924,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: borderColor,
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    status,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.4079999924,
                      color: borderColor,
                    ),
                  ),
                ],
              ),
              const Image(
                image: AssetImage("assets/images/right_arrow.png"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
