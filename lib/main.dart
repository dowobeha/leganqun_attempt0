import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:universal_platform/universal_platform.dart';

void main() => runApp(LeganqunApp());

final toolbarTextStyle = TextStyle(color: Colors.white, fontSize: 16.0);

class LeganqunApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      debugShowCheckedModeBanner: false,
      title: 'Leganqun',
      home: LeganqunHomePage(title: 'Leganqun!'),
    );
  }
}
class LeganqunHomePage extends StatefulWidget {
  LeganqunHomePage({super.key, required this.title});
  final String title;
  @override
  _LeganqunHomePageState createState() => _LeganqunHomePageState();
}

class _LeganqunHomePageState extends State<LeganqunHomePage> {

  int _counter = 0;

  static const definition = "leganqun\n"
      "лыганқун\n"
      "/lə.'ɣɑn.qun/"
      "   — good job HI CLASS! (p.226, *Badten et al, 2008*)";

  FloatingActionButton incrementButton() {
    return FloatingActionButton(
      onPressed: _incrementCounter,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
        appBar: PlatformAppBar(
          title: Text(
            widget.title,
            style: toolbarTextStyle,
          ),
        ),
        body: ListView(
          children: <Widget>[
            Text(definition),
            Text("You have pressed the button ${_counter} times."),
            incrementButton()
          ]
        )
    );
  }
}
