import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final markdownStyle = MarkdownStyleSheet.fromTheme(Theme.of(context))
        .copyWith(textAlign: WrapAlignment.center);

    final markdown = 'My test multiline markdown data. My test multiline '
        'markdown data. My test multiline markdown data. My test '
        'multiline markdown data. My test multi line markdown data.'
        ' My test multiline markdown data.';

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MarkdownBody(
                data: markdown,
                styleSheet: markdownStyle,
              ),
              MarkdownBody(
                data: markdown.replaceAll('multiline', '**multiline**'),
                styleSheet: markdownStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
