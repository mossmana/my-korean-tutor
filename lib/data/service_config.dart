import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class ServiceConfig {
  String url;

  ServiceConfig(this.url);

  static Future<ServiceConfig> getConfig({name = 'service'}) async {
    final configFile = 'assets/config/$name.json';
    final contents = await rootBundle.loadString(configFile);
    final json = jsonDecode(contents);
    return ServiceConfig(json['base_url']);
  }
}