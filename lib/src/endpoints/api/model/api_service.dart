import 'package:dartson/dartson.dart';

/// This Data Model wraps data related to all the API services that are offered through UW
/// Open Data API.
@Entity()
class ApiService {
  int _serviceId;
  String _serviceName;
  String _serviceUrl;
  List<ApiServiceMethod> _methods;

  int get serviceId => _serviceId;

  String get serviceName => _serviceName;

  String get serviceUrl => _serviceUrl;

  List<ApiServiceMethod> get methods => _methods;

  @Property(name: "service_id")
  set serviceId(int value) {
    _serviceId = value;
  }

  set methods(List<ApiServiceMethod> value) {
    _methods = value;
  }

  @Property(name: "service_url")
  set serviceUrl(String value) {
    _serviceUrl = value;
  }

  @Property(name: "service_name")
  set serviceName(String value) {
    _serviceName = value;
  }
}

/// This Data Model is used by [ApiService] to store brief information about method available
/// for each API service.
@Entity()
class ApiServiceMethod {
  num _methodId;
  String _methodUrl;

  num get methodId => _methodId;

  String get methodUrl => _methodUrl;

  @Property(name: "method_url")
  set methodUrl(String value) {
    _methodUrl = value;
  }

  @Property(name: "method_id")
  set methodId(num value) {
    _methodId = value;
  }
}