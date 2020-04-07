import 'package:bloc_example/widgets/counter_label.dart';
import 'package:flutter/material.dart';
import '../blocs/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CounterBloc _counterBloc = CounterBloc();
  @override
  void dispose() {
    super.dispose();
    _counterBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    print("Build Home ");
    return BlocProvider.value(
        value: _counterBloc,
        child: Scaffold(
          body: Center(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                BlocBuilder<CounterBloc, int>(builder: (_, estado) {
                  return Text("El estado es $estado");
                }),
                CounterLabel()
            ],
          ),
              )),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FloatingActionButton(
                  heroTag: 'Add',
                  onPressed: () {
                    _counterBloc.add(CounterEvents.increment);
                  },
                  child: Icon(Icons.add)),
              FloatingActionButton(
                  heroTag: 'Remove',
                  onPressed: () {
                    _counterBloc.add(CounterEvents.decrement);
                  },
                  child: Icon(Icons.remove)),
              FloatingActionButton(
                  heroTag: 'Restore',
                  onPressed: () {
                    _counterBloc.add(CounterEvents.reset);
                  },
                  child: Icon(Icons.restore))
            ],
          ),
        ));
  }
}
