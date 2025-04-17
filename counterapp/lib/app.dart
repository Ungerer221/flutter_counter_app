import 'package:flutter/material.dart';
import 'package:flutter_counter/counter/counter.dart';

/// {@template counter_app}
/// A [MaterialApp] which sets the `home` to [CounterPage].
/// {@endtemplate}

class CounterApp extends MaterialApp {
  /// {@macro counter_app}
  const CounterApp({super.key}) : super(home: const CounterPage()); 
  // setting the home page to be the counter page - might be coming through the counter.dart file in the counter folder
}