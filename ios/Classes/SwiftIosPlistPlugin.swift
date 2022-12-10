import Flutter
import UIKit

public class SwiftIosPlistPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "tech.shmy.ios_plist", binaryMessenger: registrar.messenger())
    let instance = SwiftIosPlistPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      result(Bundle.main.infoDictionary)
  }
}
