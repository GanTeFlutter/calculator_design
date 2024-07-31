import 'package:flutter/material.dart';

import '../constant/aplication_colors.dart';
import '../constant/application_padding.dart';
import '../constant/button_features_dimensions.dart';

class Islemler extends StatefulWidget {
  final String islem;
  final void Function() onTap;
  final Color? color;

  const Islemler({
    super.key,
    required this.islem,
    required this.onTap,
    this.color,
  });

  @override
  State<Islemler> createState() => _IslemlerState();
}

class _IslemlerState extends State<Islemler> {
  @override
  Widget build(BuildContext context) {
    Color backgroundColor = widget.color ?? AplicationColor.islemRengi;

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
          color: backgroundColor, // Use backgroundColor here
        ),
        child: Text(
          widget.islem,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Colors.white,
                fontSize: AplicationButtonSizes.buttonTextFontSize,
                fontWeight: FontWeight.w400,
              ),
        ),
      ),
    );
  }
}
