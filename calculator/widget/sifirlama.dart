import 'package:flutter/material.dart';

import '../constant/aplication_colors.dart';
import '../constant/application_padding.dart';
import '../constant/button_features_dimensions.dart';

class Sifirlama extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const Sifirlama({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      customBorder: const CircleBorder(
        eccentricity: 0.3,
      ),
      splashColor: Colors.red.withOpacity(1),
      highlightColor: Colors.red.withOpacity(1),
      child: Container(
        margin: ApplicationPadding.buttonPadding,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AplicationColor.sayiRengi,
        ),
        child: Text(
          text.toString(),
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
