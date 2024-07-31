import 'package:flutter/material.dart';


import '../constant/aplication_colors.dart';
import '../constant/application_padding.dart';


class SettingsButton extends StatefulWidget {
  final void Function() onTap;

  const SettingsButton({
    super.key,
    required this.onTap,
  });

  @override
  State<SettingsButton> createState() => _SettingsButtonState();
}

class _SettingsButtonState extends State<SettingsButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      customBorder: const CircleBorder(
        eccentricity: 0.3,
      ),
      splashColor: AplicationColor.buttonTiklamaEfektiSplashColorislemler,
      child: Container(
          margin: ApplicationPadding.buttonPadding,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AplicationColor.islemRengi,
          ),
          child: const Icon(
            Icons.settings,
            color: Colors.white,
            size: 35.0,
          )),
    );
  }
}
