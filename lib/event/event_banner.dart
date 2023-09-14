import 'package:flutter/material.dart';

class EventBanner extends StatelessWidget {
  const EventBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.topCenter,
          width: double.infinity,
          height: 300,
          child: const Image(
              image: AssetImage('./assets/images/specialistes.png'),
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover
            ),
        ),
      ],
    );
  }
}
