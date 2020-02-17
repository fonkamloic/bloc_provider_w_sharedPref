import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc_with_provider/blocs/preference_bloc.dart';

class PreferenceProvider with ChangeNotifier{
  PreferenceBloc _bloc;

  PreferenceProvider(){
    _bloc = PreferenceBloc();
    _bloc.loadPreferences();

  }


  PreferenceBloc get bloc => _bloc;


}