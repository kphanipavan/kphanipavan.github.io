// @dart = 2.7

import 'dart:ui' as ui;

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'package:homepage/generated_plugin_registrant.dart';
import 'package:homepage/main.dart' as entrypoint;

Future<void> main() async {
  registerPlugins(webPluginRegistry);
  await ui.webOnlyInitializePlatform();
  entrypoint.main();
}
