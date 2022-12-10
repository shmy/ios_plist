import 'package:flutter/services.dart';

class IosPlist {
  final methodChannel = const MethodChannel('tech.shmy.ios_plist');
  Future<dynamic> getPlist() {
    return methodChannel.invokeMethod("get_plist");
  }
}
