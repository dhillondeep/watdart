import 'package:dartson/dartson.dart';
import 'package:uwdart/src/base/models/uw_location.dart';
import 'package:uwdart/src/base/models/uw_open_hours.dart';
import 'package:uwdart/src/base/models/uw_special_day.dart';

/// This Data Model wraps the data related to Food Services Location.
@Entity()
class FoodServicesLocation implements UWLocation {
  @override
  String building;

  @override
  @Property(name: "dates_closed")
  List<String> datesClosed;

  @override
  String description;

  @override
  @Property(name: "is_24hrs")
  bool is24Hrs;

  @override
  @Property(name: "is_open_now")
  bool isOpenNow;

  @override
  num latitude;

  @override
  String logo;

  @override
  num longitude;

  @override
  String notice;

  @override
  @Property(name: "opening_hours")
  UWOpeningHours openingHours;

  @override
  @Property(name: "outlet_id")
  num outletId;

  @override
  @Property(name: "outlet_name")
  String outletName;

  @override
  @Property(name: "special_hours")
  List<UWSpecialDay> specialHours;

  FoodServicesLocationAdditional _additional;

  FoodServicesLocationAdditional get additional => _additional;

  set additional(FoodServicesLocationAdditional value) {
    _additional = value;
  }
}

/// This Data Model used by [FoodServicesLocation] wraps additional data provided by the location.
@Entity()
class FoodServicesLocationAdditional {
  String _menuUrl;

  String get menuUrl => _menuUrl;

  @Property(name: "menu_url")
  set menuUrl(String value) {
    _menuUrl = value;
  }
}
