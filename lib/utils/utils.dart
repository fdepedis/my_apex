import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frino_icons/frino_icons.dart';

import 'config.dart';

class Utils extends StatelessWidget {
  static int colorCard;
  static double dimensionCard;
  static Icon iconCard;
  static int indexDetailScreen;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

  static double getHeightCard(String dimen) {
    switch (dimen) {
      case "LARGE":
        {
          dimensionCard = Config.cardHeightLarge;
          break;
        }
      case "MEDIUM":
        {
          dimensionCard = Config.cardHeightMedium;
          break;
        }
      case "SMALL":
        {
          dimensionCard = Config.cardHeightSmall;
          break;
        }
      default:
        {
          dimensionCard = Config.cardHeightDefault;
          break;
        }
    }
    return dimensionCard;
  }

  static Icon getIconCard(String typeCard) {
    switch (typeCard) {
      case "R_ADJ":
        {
          iconCard =
              Icon(FrinoIcons.f_calculator, color: Colors.white70, size: 70);
        }
        break;
      default:
        {
          iconCard = Icon(Icons.album, color: Colors.red, size: 70);
        }
        break;
    }
    return iconCard;
  }

  static int getIndexDetailScreen(String typeCard) {
    switch (typeCard) {
      case "R_CALENDAR":
        {
          indexDetailScreen = 1;
        }
        break;
      case "R_TYPE":
        {
          indexDetailScreen = 2;
        }
        break;
      case "R_CHECK":
        {
          indexDetailScreen = 3;
        }
        break;
      default:
        {
          indexDetailScreen = 0;
        }
        break;
    }
    return indexDetailScreen;
  }
}
