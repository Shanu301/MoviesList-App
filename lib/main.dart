import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movielist/screens/home.dart';
import 'package:movielist/utility/apptheme.dart';
import 'package:movielist/utility/size_config.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(

      create: (BuildContext context) { },
      child: LayoutBuilder(
        builder: (context, constraints) {
          return OrientationBuilder(
            builder: (context, orientation) {
              SizeConfig().init(constraints, orientation);
              return MaterialApp(

                title: 'Movies',
                theme: ThemeData(

                  brightness: Brightness.dark,
                  primarySwatch: Colors.red,
                  textTheme: TextTheme(
                    headline: TextStyle(
                      fontSize: 3.8 * SizeConfig.textmultiplier,
                      fontWeight: FontWeight.w500,
                    ),
                    title: TextStyle(
                        fontSize: 3.1 * SizeConfig.textmultiplier,
                        color: AppTheme.primarytext.withOpacity(.8),
                        fontWeight: FontWeight.w400),
                    subtitle: TextStyle(
                        fontSize: 2.2 * SizeConfig.textmultiplier,
                        color: Colors.black),
                    body1: TextStyle(
                        fontSize: 1.8 * SizeConfig.textmultiplier,
                        fontWeight: FontWeight.w400,
                        color: Colors.blueGrey),
                  ),
                ),
                debugShowCheckedModeBanner: false,
                home: MyHomePage(),
              );
            },
          );
        },
      ),
    );
  }
}
