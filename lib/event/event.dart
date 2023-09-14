import 'package:app_boulot_oui/event/event_app_bar.dart';
import 'package:app_boulot_oui/event/event_banner.dart';
import 'package:app_boulot_oui/event/event_bottom_banner.dart';
import 'package:app_boulot_oui/event/event_content.dart';
import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  bool _isPresent = false;
  String eventPageTitle = "Détails de l'événement";


  parentIsPresentInfo() {
    // setState(() => {
    //   _isPresent = !_isPresent,
    //   if (_isPresent)
    //     {eventPageTitle = "Détails de l'événement"}
    //   else
    //     {eventPageTitle = "Toto"}
    // });
    setState(() {
      
    });
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: MyAppBar(title: eventPageTitle),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const EventBanner(),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: const EventContent(),
            )
          ],
        ),
      ),
      bottomSheet: EventBottomBanner(parentIsPresentInfo: parentIsPresentInfo),
      extendBodyBehindAppBar: true,
    );
  }
}
