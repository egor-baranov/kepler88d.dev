import 'package:flutter/material.dart';
import 'package:kepler88dcom/styles/themes.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'kepler88d,io',
      theme: light,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 36),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Hiring',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(width: 64),
                Text(
                  'Contacts',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(width: 64),
                Text(
                  'Projects',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(width: 64),
                Text(
                  'Blog',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(width: 64),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '@kepler88d',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        'Egor Baranov',
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 64),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Software engineer from Saint Petersburg.',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              launch("t.me/kepler88d");
                            },
                            child: Image.asset(
                              "icons/telegram.png",
                              height: 48,
                              width: 48,
                            ),
                          ),
                          SizedBox(width: 36),
                          GestureDetector(
                            onTap: () {
                              launch("github.com/egor-baranov");
                            },
                            child: Image.asset(
                              "icons/github.png",
                              height: 48,
                              width: 48,
                            ),
                          ),
                          SizedBox(width: 36),
                          GestureDetector(
                            onTap: () {
                              launch("twitter.com/kepler88d");
                            },
                            child: Image.asset(
                              "icons/twitter.png",
                              height: 48,
                              width: 48,
                            ),
                          ),
                          SizedBox(width: 36),
                          GestureDetector(
                            onTap: () {
                              launch("spotify.com/kepler88d");
                            },
                            child: Image.asset(
                              "icons/spotify.png",
                              height: 48,
                              width: 48,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    width: 400,
                    height: 400,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('gif/avatar.gif'),
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
