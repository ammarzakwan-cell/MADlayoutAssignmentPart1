//MUHAMMAD AMMAR ZAKWAN BIN AMRAN 1712711
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Grid List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 3 / 2,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              color: Colors.teal[200],
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 50.0, bottom: 10.0),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(MdiIcons.powerPlug, size: 34),
                            ),
                            TextSpan(
                              text: "Plug Ammar",
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
                        child: MyStatefulWidget()),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.teal[200],
              ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 50.0, bottom: 10.0),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(MdiIcons.garage, size: 34),
                            ),
                            TextSpan(
                              text: "Garage Lights",
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
                        child: MyStatefulWidget()),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.teal[200],
              ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 50.0, bottom: 10.0),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(MdiIcons.gate, size: 34),
                            ),
                            TextSpan(
                              text: "Gate Switch",
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
                        child: MyStatefulWidget()),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.teal[200],
              ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 50.0, bottom: 10.0),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(MdiIcons.bed, size: 34),
                            ),
                            TextSpan(
                              text: "Bilik Hana",
                            ),
                          ],
                        ),
                      ),
                      /*child: IconButton(
                        icon: Icon(Icons.android),
                        color: Colors.white,
                        onPressed: () {
                          print("You Pressed the icon!");
                        },
                      ),*/
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
                        child: MyStatefulWidget()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _lights = false;
  var _message = 'OFF';

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(_message),
      value: _lights,
      onChanged: (bool value) {
        setState(() {
          _lights = value;
          if (value) {
            _message = 'ON';
          } else {
            _message = 'OFF';
          }
        });
      },
      //secondary: const Icon(Icons.lightbulb_outline),
    );
  }
}
