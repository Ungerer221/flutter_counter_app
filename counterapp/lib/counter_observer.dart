import 'package:bloc/bloc.dart';

// creating a `BlocObserver` which will help us observer all state changes in the application

/// {@template counter_observer}
/// [BlocObserver] for the counter application which
/// observes all state changes.
/// {@endtemplate}

class CounterObserver extends BlocObserver {
  // {@macro counter_observer}
  const CounterObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);

    print('${bloc.runtimeType} $change');
  }
}
// In this case, we’re only overriding onChange to see all state changes that occur.
// > onChange works the same way for both Bloc and Cubit instances.