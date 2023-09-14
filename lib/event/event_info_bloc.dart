import 'package:flutter/material.dart';

class EventInfoBloc extends StatelessWidget {
  final String info1;
  final String info2;
  final AssetImage icone;

  const EventInfoBloc(
      {Key? key, required this.info1, required this.info2, required this.icone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            margin: const EdgeInsets.only(top: 0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(12, 85, 105, 255),
                image: DecorationImage(
                  image: icone,
                  scale: .8,
                )),
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  info1,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(info2)
              ],
            ),
          )
        ],
      ),
    );


  }
}
