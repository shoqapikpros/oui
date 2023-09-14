import 'package:app_boulot_oui/event/event_info_bloc.dart';
import 'package:app_boulot_oui/event/event_user_list.dart';
import 'package:flutter/material.dart';

class EventContent extends StatefulWidget {
  const EventContent({super.key});

  @override
  State<EventContent> createState() => _EventContentState();
}

class _EventContentState extends State<EventContent> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        alignment: Alignment.topLeft,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Les Spécialistes',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),  
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: const Column(
                children: [
                  EventInfoBloc(
                    info1: '10 Juin 2023',
                    info2: '13h - 14h',
                    icone: AssetImage('./assets/icones/calendar.png')
                  ),
                  EventInfoBloc(
                    info1: '10 Juin 2023',
                    info2: '13h - 14h',
                    icone: AssetImage('./assets/icones/map.png')
                  ),
                  EventInfoBloc(
                    info1: 'Vous',
                    info2: 'Organisateur',
                    icone: AssetImage('./assets/icones/user.png')
                  ),
                ]
              ),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'À propos',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'Appréciez un bon repas en compagnie de vos délicieux collégues. Dans une ambiance pleine de convivialité, et surtout de bienveillance. Le tout organisé par votre trés cher Clément, organisateur en chef ...'
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                  'Participants',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                EventUserList(),
              ],
            ),
          ]
        ),
      ),  
    );
  }
}
