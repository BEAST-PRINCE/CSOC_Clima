import 'package:geolocator/geolocator.dart';

class Location{
  double latitude=0.0;
  double longitude=0.0;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.lowest);
      print(position);
      latitude=position.latitude;
      longitude=position.longitude;
    }catch(e){
      print(e);
    }
  }

}