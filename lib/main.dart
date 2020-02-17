import 'package:flutter/material.dart';
import 'package:flutter_bloc_with_provider/models/color.dart';
import 'package:flutter_bloc_with_provider/providers/preference_provider.dart';
import 'package:flutter_bloc_with_provider/widgets/home.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (BuildContext context) => PreferenceProvider(),
        child: Consumer<PreferenceProvider>(
          builder: (context, provider, child) => StreamBuilder<Brightness>(
              stream: provider.bloc.brightness$,
              builder: (context, snapshot) {
                if (!snapshot.hasData) return Container();
                return StreamBuilder<ColorModel>(
                    stream: provider.bloc.primaryColor,
                    builder: (context, snapshotColor) {
                      if (!snapshotColor.hasData) return Container();
                      return MaterialApp(
                          title: 'Flutter Demo',
                          theme: ThemeData(
                              primaryColor: snapshotColor.data.color,
                              brightness: snapshot.data),
                          home: Home());
                    });
              }),
        ));
  }
}
