import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatefulWidget {
  final String titleCard;
  final int index;
  final String url;
  final String env;

  WebViewContainer(
      {Key key,
      @required this.titleCard,
      @required this.index,
      @required this.url,
      @required this.env})
      : super(key: key);

  @override
  createState() =>
      _WebViewContainerState(this.index, this.titleCard, this.url, this.env);
}

class _WebViewContainerState extends State<WebViewContainer> {
  final _key = UniqueKey();

  _WebViewContainerState(index, titleCard, url, env);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          widget.titleCard,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Source Sans Pro',
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: WebView(
                  key: _key,
                  javascriptMode: JavascriptMode.unrestricted,
                  initialUrl: widget.url))
        ],
      ),
    );
  }
}
