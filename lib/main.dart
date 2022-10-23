import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:universal_platform/universal_platform.dart';

void main() {
  runApp(const LeganqunApp());
}

class LeganqunApp extends StatelessWidget {
  const LeganqunApp({super.key});

  // This widget is the root of the Leganqun app
  @override
  Widget build(BuildContext context) {
    if (UniversalPlatform.isIOS | UniversalPlatform.isMacOS) {
      return CupertinoApp(
        title: 'Leganqun',
        theme: CupertinoThemeData(brightness: Brightness.dark),
        home: const LeganqunHomePage(title: 'Leganqun Home Page'),
      );
    } else {
      return MaterialApp(
        title: 'Leganqun',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const LeganqunHomePage(title: 'Leganqun Home Page'),
      );
    }
  }
}

class LeganqunHomePage extends StatefulWidget {
  const LeganqunHomePage({super.key, required this.title});

  final String title;

  @override
  State<LeganqunHomePage> createState() => _LeganqunHomePageState();
}

class _LeganqunHomePageState extends State<LeganqunHomePage> {
  int _counter = 0;

  static const definition = "leganqun\n"
      "лыганқун\n"
      "/lə.'ɣɑn.qun/"
      "   — good job! (p.226, *Badten et al, 2008*)";

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
    if (UniversalPlatform.isIOS | UniversalPlatform.isMacOS) {
      return CupertinoPageScaffold(
        // Uncomment to change the background color
        // backgroundColor: CupertinoColors.systemPink,
        navigationBar: const CupertinoNavigationBar(
          middle: Text("Leganqun"),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(definition + "\n"
                    'You have pressed the button $_counter times.'),
              ),
              const SizedBox(height: 20.0),
              Center(
                child: CupertinoButton.filled(
                  onPressed: () => setState(() => _counter++),
                  child: const Icon(CupertinoIcons.add),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(definition),
              Text('$_counter', style: Theme.of(context).textTheme.headline4)
            ],
          ),
        ),
        floatingActionButton: incrementButton(), // This trailing comma makes auto-formatting nicer for build methods.
      );
    }
  }
}
