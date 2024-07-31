import 'package:flutter/material.dart';
import 'package:flutter_application_1/calculator/constant/aplication_colors.dart';
import 'package:flutter_application_1/calculator/constant/application_padding.dart';
import 'package:flutter_application_1/calculator/constant/appllication_string.dart';
import 'package:flutter_application_1/calculator/constant/button_features_dimensions.dart';
import 'package:flutter_application_1/calculator/widget/islemler.dart';

import 'widget/sayilar.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          calculatorscreen(context),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                firstline(context),
                secondline(),
                thirdline(),
                fourthline(),
                fifthline(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Expanded fifthline(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          sifir(context),
          Expanded(
            child: InkWell(
              onTap: () {},
              customBorder: const CircleBorder(
                eccentricity: 0.3,
              ),
              splashColor:
                  AplicationColor.buttonTiklamaEfektiSplashColorislemler,
              child: Container(
                margin: ApplicationPadding.buttonPadding,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AplicationColor.islemRengi,
                ),
                child: Text(
                  AppllicationString.virgul,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                        fontSize: AplicationButtonSizes.buttonTextFontSize,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Islemler(
              color: AplicationColor.turuncu,
              islem: AppllicationString.esittir,
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }

  Expanded fourthline() {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Sayilar(
              sayi: AppllicationString.bir,
              onTap: () {},
            ),
          ),
          Expanded(
            child: Sayilar(
              sayi: AppllicationString.iki,
              onTap: () {},
            ),
          ),
          Expanded(
            child: Sayilar(
              sayi: AppllicationString.uc,
              onTap: () {},
            ),
          ),
          Expanded(
            child: Islemler(
              islem: '+',
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }

  Expanded thirdline() {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Sayilar(
              sayi: AppllicationString.dort,
              onTap: () {},
            ),
          ),
          Expanded(
            child: Sayilar(
              sayi: AppllicationString.bes,
              onTap: () {},
            ),
          ),
          Expanded(
            child: Sayilar(
              sayi: AppllicationString.alti,
              onTap: () {},
            ),
          ),
          Expanded(
            child: Islemler(
              islem: AppllicationString.cikar,
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }

  Expanded secondline() {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Sayilar(
              sayi: AppllicationString.yedi,
              onTap: () {},
            ),
          ),
          Expanded(
            child: Sayilar(
              sayi: AppllicationString.sekiz,
              onTap: () {},
            ),
          ),
          Expanded(
            child: Sayilar(
              sayi: AppllicationString.dokuz,
              onTap: () {},
            ),
          ),
          Expanded(
            child: Islemler(
              islem: AppllicationString.carp,
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }

  Expanded firstline(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {},
              customBorder: const CircleBorder(
                eccentricity: 0.3,
              ),
              splashColor:
                  AplicationColor.buttonTiklamaEfektiSplashColorislemler,
              child: Container(
                  margin: ApplicationPadding.buttonPadding,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AplicationColor.red,
                  ),
                  child: Text(
                    'AC',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.white,
                          fontSize: AplicationButtonSizes.buttonTextFontSize,
                          fontWeight: FontWeight.w400,
                        ),
                  )),
            ),
          ),
          Expanded(
              child: InkWell(
            onTap: () {
              settingsShowDialog(context);
            },
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
          )),
          Expanded(
            child: Islemler(
              islem: '%',
              onTap: () {},
            ),
          ),
          Expanded(
            child: Islemler(
              islem: '/',
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }

  Future<dynamic> settingsShowDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Henüz aktif değil'),
          content: const Text(
              'Hesap makinesinde geliştirilmesini istediğiniz bir özellik var mı? Lütfen bize bildirin.'),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Kapat'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Bize Bildir'),
                ),
              ],
            )

            //
          ],
        );
      },
    );
  }

  Expanded calculatorscreen(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        alignment: Alignment.bottomRight,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "0",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                    fontSize: 55,
                    fontWeight: FontWeight.w400,
                  ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded sifir(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: ApplicationPadding.sifirbuttonsymmetric,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Material(
            color: AplicationColor.sayiRengi,
            child: InkWell(
              onTap: () {},
              splashColor:
                  AplicationColor.buttonTiklamaEfektiSplashColorislemler,
              highlightColor: AplicationColor.customSifir,
              child: Container(
                margin: ApplicationPadding.buttonPadding,
                alignment: Alignment.center,
                child: Text(
                  '0',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                        fontSize: AplicationButtonSizes.buttonTextFontSize,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
