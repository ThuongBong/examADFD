import 'package:exam/service/authentication_serivice.dart';
import 'package:exam/service/data_service.dart';
import 'package:exam/states/cubit_state.dart';
import 'package:exam/states/initial_state.dart';
import 'package:bloc/bloc.dart';

import 'package:exam/model/place_model.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.dataServices, required this.authService}) : super(InitialState()){
    getAllDestination();
  }
  final DataServices dataServices;
  final AuthenticationService authService;

  var destinations;
  late List<PlaceModel> places;
  late List<PlaceModel> favoritePlaces = [];
  var welcome;
  var userModel;

  void getAllDestination() async {
    try {
      emit(LoadingState());
      destinations = await dataServices.getInfoDestination();
      emit(HomeLoadedState(destinations: destinations));
    }catch(e) {
      print(e);
    }
  }
}
