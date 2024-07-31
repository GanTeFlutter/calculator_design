import 'package:flutter/material.dart';

class ApplicationPadding {
  ApplicationPadding._();

  static const double paddingValue = 5.0;

  static EdgeInsets get buttonPadding => const EdgeInsets.all(paddingValue);
  static EdgeInsets get sifirbuttonsymmetric => const EdgeInsets.symmetric(vertical: 13);

  static EdgeInsets get onlyLeftRight => const EdgeInsets.only(
        left: paddingValue,
        right: paddingValue,
      );
}
