import 'package:flutter/material.dart';
import 'package:my_apex/utils/strings.dart';
import '../contents/card_content.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);

  String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

enum cardDimension { LARGE, MEDIUM, SMALL }

class _HomeScreenState extends State<HomeScreen> {
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Source Sans Pro',
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: _buildBody(context),
    );
  }
}

ListView _buildBody(BuildContext context) {
  return ListView(
    shrinkWrap: true,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CardContent(
              titleCard: Strings.env_dev,
              subTitleCard: Strings.generic_description,
              typeCard: "R_ADJ",
              dimensionCard: cardDimension.MEDIUM.toString(),
              colorCard: /*0xFF7C2289*/ Color(
                  int.parse("AA76C1", radix: 16) + 0xFF000000),
              /*Colors.red[300],*/
              index: 1,
              //Utils.getIndexDetailScreen(typeDimension.R_CALENDAR.toShortString()),
              env: Strings.env_dev,
              url: Strings.url_dev,
            ),
            CardContent(
              titleCard: Strings.env_int,
              subTitleCard: Strings.generic_description,
              typeCard: "R_ADJ",
              dimensionCard: cardDimension.MEDIUM.toString(),
              colorCard: /*0xFFF48731*/ /*Colors.amber[800],*/ Color(
                  int.parse("EE997C", radix: 16) + 0xFF000000),
              index: 1,
              //Utils.getIndexDetailScreen(typeDimension.R_TYPE.toShortString()),
              env: Strings.env_int,
              url: Strings.url_int,
            ),
            CardContent(
              titleCard: Strings.env_prod,
              subTitleCard: Strings.generic_description,
              typeCard: "R_ADJ",
              dimensionCard: cardDimension.MEDIUM.toString(),
              colorCard: /*0xFFFFB849*/ /*Colors.orange[300],*/ Color(
                  int.parse("F3CC71", radix: 16) + 0xFF000000),
              index: 1,
              //Utils.getIndexDetailScreen(typeDimension.R_CHECK.toShortString()),
              env: Strings.env_prod,
              url: Strings.url_prod,
            ),
            /**
             * Here, if add new card, it's possible scroll to view correctly the card created
             */
          ],
        ),
      ),
    ],
  );
}
