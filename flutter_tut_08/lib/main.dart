import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      DevicePreview(
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter Tutorial 08"),
      ),
      body: Container(
        // margin: EdgeInsets.only(top: 200.0, bottom: 100),
        // width: double.infinity,
        // transform: Matrix4.rotationZ(0.3),
        width: 200,
        height: 200,
        alignment: Alignment.bottomLeft,
        color: Colors.pink,
        child: const Text(
          'Nova Nawarathna',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
