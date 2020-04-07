import 'package:bloc/bloc.dart';

enum CounterEvents { increment, decrement, reset }

class CounterBloc extends Bloc<CounterEvents, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(CounterEvents event) async* {
    switch (event) {
      case CounterEvents.increment:
      yield this.state +1;
        break;
      case CounterEvents.decrement:
      yield this.state -1;
        break;
      case CounterEvents.reset:
      yield 0;
        break;
    }
  }
}
