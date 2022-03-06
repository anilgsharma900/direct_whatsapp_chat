
import 'dart:async';

import 'package:flutter/services.dart';

class Plugins {
  static const MethodChannel _channel = MethodChannel('open_whatsapp');

  static Future<void> sendSingleMessage(String mobile,String message) async {
    print("mobile: $mobile $message");
    await _channel.invokeMethod('openWhatsappMethod',{"mobile":mobile,"message":message});
  }
}
