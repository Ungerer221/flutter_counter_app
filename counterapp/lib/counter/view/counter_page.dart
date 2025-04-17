import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter/counter/counter.dart';

/// {@template counter_page}
/// A [StatelessWidget] which is responsible for providing a
/// [CounterCubit] instance to the [CounterView].
/// {@endtemplate}

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context){
    return BlocProvider(
      create: (_)=> CounterCubit(),
      child: const CounterView(), // links the counter_view.dart
    );
  }
}

/// > It’s important to separate or decouple the creation of a 
/// Cubit from the consumption of a Cubit in order to have code that is much more testable and reusable.