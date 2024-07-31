import 'package:flutter/material.dart';

import '../constant/aplication_colors.dart';
import '../constant/application_padding.dart';
import '../constant/button_features_dimensions.dart';

class Sayilar extends StatefulWidget {
  final String sayi;
  final void Function() onTap;
  const Sayilar({super.key, required this.sayi, required this.onTap});

  @override
  State<Sayilar> createState() => _SayilarState();
}

class _SayilarState extends State<Sayilar> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      customBorder: const CircleBorder(
        eccentricity: 0.3,
      ),
      splashColor: AplicationColor.buttonTiklamaEfektiSplashColorSayilar,
      child: Container(
        margin: ApplicationPadding.buttonPadding,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AplicationColor.sayiRengi,
        ),
        child: Text(
          widget.sayi,
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
