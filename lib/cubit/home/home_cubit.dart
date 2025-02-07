import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:weather_service/data/models/weather.dart';
import 'package:weather_service/data/services/dio_service.dart';
import 'package:weather_service/data/services/geo_service.dart';
import 'package:weather_service/secrets.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final DioService _dioService = DioService();

  HomeCubit() : super(HomeInitial());

  // Updated function with optional cityName parameter
  Future<void> getWeatherByLocation({String? cityName}) async {
    emit(HomeLoading());
    try {
      String api;

      if (cityName != null && cityName.isNotEmpty) {
        // API call for city name
        api =
            '?q=${Uri.encodeComponent(cityName)}&units=metric&lang=en&appid=$openWeatherMapApiKey';
      } else {
        // API call for geolocation
        final location = await GeoService().getCurrentLocation();
        api =
            '?units=metric&lang=en&lat=${location.latitude}&lon=${location.longitude}&appid=$openWeatherMapApiKey';
      }

      final response = await _dioService.get(api);
      final weather = Weather.fromJson(response.data as Map<String, dynamic>);
      await Hive.box('myBox').put('weather', weather);
      emit(HomeLoaded(weather));
    } catch (e, s) {
      debugPrintStack(label: e.toString(), stackTrace: s);
      emit(HomeFailure(e.toString()));
    }
  }
}
