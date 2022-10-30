import 'package:flutter/material.dart';

import 'hex_color.dart';

class ExerciseTile extends StatelessWidget {
  final dynamic icon;
  final String title;
  final String subTitle;
  final Color bgColor;

  const ExerciseTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:10.0),
      child: Material(
          color: Colors.white,
          elevation: 2,
          borderRadius: BorderRadius.all(Radius.circular(12)),
          // decoration: BoxDecoration(
          //   color: Colors.white,
          //   border: Border.all(
          //     color: Colors.grey[100]!,
          //     width: 2,

          //   ),
          //   borderRadius: BorderRadius.circular(12),
          // ),
          // padding: EdgeInsets.symmetric(horizontal: 10),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: bgColor,
                          borderRadius: BorderRadius.circular(12)),
                      padding: const EdgeInsets.all(16),
                      child: Icon(
                        icon,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            color: HexColor('#333b57'),
                            fontWeight: FontWeight.w600,
                            fontSize: 19,
                          ),
                        ),
                        Text(
                          subTitle,
                          style: TextStyle(
                            color: HexColor('#b0b9c7'),
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.more_horiz,
                  color: HexColor('#959db2'),
                )
              ],
            ),
          )),
    );
  }
}
