import 'package:flutter_test/flutter_test.dart';
import 'package:ios_plist/ios_plist.dart';
import 'package:ios_plist/ios_plist_platform_interface.dart';
import 'package:ios_plist/ios_plist_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockIosPlistPlatform
    with MockPlatformInterfaceMixin
    implements IosPlistPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final IosPlistPlatform initialPlatform = IosPlistPlatform.instance;

  test('$MethodChannelIosPlist is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelIosPlist>());
  });

  test('getPlatformVersion', () async {
    IosPlist iosPlistPlugin = IosPlist();
    MockIosPlistPlatform fakePlatform = MockIosPlistPlatform();
    IosPlistPlatform.instance = fakePlatform;

    expect(await iosPlistPlugin.getPlatformVersion(), '42');
  });
}
