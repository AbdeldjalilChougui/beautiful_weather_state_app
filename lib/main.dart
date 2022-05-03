import 'package:beautifulweatherapp/screens/search_page.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'WeatherBloc.dart';
import 'WeatherModel.dart';
import 'WeatherRepo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Weather',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[900],
        body: BlocProvider(
          builder: (context) => WeatherBloc(WeatherRepo()),
          child: SearchPage(),
        ),
      ),
    );
  }
}