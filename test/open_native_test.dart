import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:open_native/open_native.dart';

void main() {
  const MethodChannel channel = MethodChannel('open_native');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await OpenNative.platformVersion, '42');
  });
}
