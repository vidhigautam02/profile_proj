import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: VxBox(
              child: VStack(
                // mainAxisAlignment: MainAxisAlignment.center,
                [
                  VxBox()
                      .square(150)
                      .roundedFull
                      .bgImage(DecorationImage(
                          image: AssetImage(
                              "images/WhatsApp Image 2021-07-06 at 4.00.19 PM.jpeg")))
                      .make(),
                  VxTextBuilder(" FLUTTER DEVELOPER")
                      .size(15.0)
                      .teal100
                      .letterSpacing(7.0)
                      .fontFamily("Yomogi")
                      .make(),
                  Divider(
                    color: Colors.teal[100],
                  ).wh(150.0, 20.0),
                  VxCard(
                    ListTile(
                        leading: Icon(
                          Icons.phone,
                          color: Colors.teal,
                        ),
                        title: "7078548824"
                            .text
                            .fontFamily("Yomogi")
                            .teal900
                            .make()),
                  ).white.p32.make(),
                  VxCard(ListTile(
                          leading: Icon(Icons.email, color: Colors.teal),
                          title: "vidhi.gautam_cs.da19@gla.ac.in"
                              .text
                              .fontFamily("Yomogi")
                              .teal900
                              .make()))
                      .white
                      .p32
                      .make(),
                ],
                crossAlignment: CrossAxisAlignment.center,
              ).centered(),
            ).make(),
          )),
    );
  }
}
