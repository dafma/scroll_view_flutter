import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scroll_view/pages/botones_page.dart';
import 'package:scroll_view/pages/scroll_page.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reads pruebas',
    initialRoute: 'splash',
      routes : {
        'scroll' : (BuildContext context) => ScrollPage(),
        'splash' : (BuildContext context) => InicioSplash(),
        'botones': (BuildContext context) => BotonesPage(),
      }
    );
  }
}

class InicioSplash extends StatefulWidget {
  InicioSplash({Key key}) : super(key: key);

  @override
  _InicioSplashState createState() => _InicioSplashState();
}

class _InicioSplashState extends State<InicioSplash> {
  @override
  Widget build(BuildContext context) {

    //  pone de color blanco la barra de hasta arriba
    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.white,
    ));

    return SplashScreen(
      title: Text("Bienvenido", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),  
      seconds: 8,
      navigateAfterSeconds: BotonesPage(),
      image: Image.asset("assets/malirentas.png"),
      backgroundColor: Color(0xffFFCF00),
      styleTextUnderTheLoader: TextStyle(),
      photoSize: 150.0,
      onClick: () => print("Flutter op"),
      loaderColor: Colors.white,
    );
  }
}

