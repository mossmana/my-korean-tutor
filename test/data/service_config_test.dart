import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/data/service_config.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  test('Test asset should be read', () async {
    ServiceConfig config = await ServiceConfig.getConfig(name: 'test_service');
    expect(config.url, 'https://test.com/');
  });
}