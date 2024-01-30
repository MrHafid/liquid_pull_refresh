import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'liquid_pull_refresh_platform_interface.dart';

/// An implementation of [LiquidPullRefreshPlatform] that uses method channels.
class MethodChannelLiquidPullRefresh extends LiquidPullRefreshPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('liquid_pull_refresh');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
