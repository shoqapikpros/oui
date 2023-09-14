import 'package:flutter/material.dart';

class EventUserList extends StatelessWidget {
  const EventUserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Padding(
        padding: EdgeInsets.only(top: 10, bottom: 120),
        child: Text(
          'Clément Halipré - Clément Halipré - Clément Halipré - Clément Halipré - Clément Halipré - Clément Halipré - Clément Halipré'
        ),
      )
    );
  }
}
