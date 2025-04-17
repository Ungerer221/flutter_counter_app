import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter/counter/counter.dart';
import 'package:flutter_counter/counter/cubit/counter_cubit.dart';

/// {@template counter_view}
/// A [StatelessWidget] which reacts to the provided
/// [CounterCubit] state and notifies it in response to user input.
/// {@endtemplate}

class CounterView extends StatelessWidget{
   /// {@macro counter_view}
  const CounterView({super.key}); // find out why this super key reason

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text('$state', style: textTheme.displayMedium);
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            // the button that changes the state in the increment direction
            key: const Key('counterView_increment_floatingActionButton'),
            child: const Icon(Icons.add),
            onPressed: ()=> context.read<CounterCubit>().increment(),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            // the button that changes the state in the decrement direction
            key: const Key('counterView_decrement_floatingActionButton'),
            child: const Icon(Icons.remove),
            onPressed: ()=> context.read<CounterCubit>().decrement(),
          ),
        ],
      ),
    );
  }
}

/// {@template counter_view}
/// A [BlocBuilder] is used to wrap the [Text] widget in order to update the text any time the - blocBuilder used because the thext will be updating based on cubit changes
/// [CounterCubit] state changes. In addition, [context.read<CounterCubit>()] is used to look-up the closest 
/// [CounterCubit] instance.
/// 
/// Only the Text widget is wrapped in a BlocBuilder because that is the only widget that needs 
/// to be rebuilt in response to state changes in the CounterCubit. Avoid unnecessarily wrapping 
/// widgets that don’t need to be rebuilt when a state changes.
/// 
/// {@endtemplate}