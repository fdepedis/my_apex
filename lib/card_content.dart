import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_apex/utils.dart';
import 'package:my_apex/web_view_container.dart';

class CardContent extends StatelessWidget {
  static double cardHeight;
  static Icon iconCard;
  static int indexDetailScreen;

  final String titleCard;
  final String subTitleCard;
  final String typeCard;
  final String dimensionCard;
  final Color colorCard;
  final int index;
  final String env;
  final String url;

  CardContent(
      {Key key,
      @required this.titleCard,
      @required this.subTitleCard,
      @required this.typeCard,
      @required this.dimensionCard,
      @required this.colorCard,
      @required this.index,
      @required this.url,
      @required this.env})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    cardHeight = Utils.getHeightCard(dimensionCard);
    iconCard = Utils.getIconCard(typeCard);

    return Container(
      height: cardHeight,
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
        elevation: 4,
        color: colorCard,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WebViewContainer(
                    index: index, titleCard: titleCard, url: url, env: env),
              ),
            );
          },
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: iconCard,
                  /*Icon(Icons.album, size: 70),*/
                  title: Text(
                    titleCard,
                    style: TextStyle(
                      color: Colors.white70,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.bold,
                      fontSize: 26.0,
                    ),
                  ),
                  subtitle: Text(
                    subTitleCard,
                    style: TextStyle(
                        color: Colors.white70,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 22.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
