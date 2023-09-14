import 'package:flutter/material.dart';

class EventBottomBanner extends StatefulWidget {
  final VoidCallback parentIsPresentInfo;
  const EventBottomBanner({super.key, required this.parentIsPresentInfo});

  @override
  State<EventBottomBanner> createState() => _EventBottomBannerState();
}

class _EventBottomBannerState extends State<EventBottomBanner> {
  Color _buttonColor = const Color.fromARGB(255, 42, 157, 143);
  String _buttonLibelle = "S'inscrire";
  bool _isPresent = false;

  void _changeButtonState() {
    setState(() {
      _isPresent = !_isPresent;

      if (_isPresent) {
        _buttonColor = const Color.fromARGB(255, 42, 157, 143);
        _buttonLibelle = "S'inscrire";
      } else {
        _buttonColor = const Color.fromARGB(255, 234, 82, 111);
        _buttonLibelle = "Se désinscrire";
      }
      widget.parentIsPresentInfo;
    });
  }

  var listy = 0;
  @override
  Widget build(
    BuildContext context,
  ) {
    return Positioned(
        bottom: 0,
        child: SizedBox(
          width: double.infinity,
          height: 100,
          child: Container(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: TextButton(
                  onPressed: _changeButtonState,
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    )),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    minimumSize: MaterialStateProperty.all<Size>(
                        const Size.fromHeight(60)),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(_buttonColor),
                  ),
                  child: Text(_buttonLibelle.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.white,
                      )),
                )),
          ),
        ));
  }
}
