import 'package:bloc_example/blocs/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Container(
        width: double.infinity,
        color: Colors.deepOrangeAccent,
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            BlocBuilder<CounterBloc,int>(
              builder: ( _ , state){
                print("rebuild");
                return Text(
                  "child $state",
                  textAlign: TextAlign.center,
                );
              },
            ),
            FlatButton(onPressed: (){
              counterBloc.add(CounterEvents.reset);
            }, 
            color: Colors.lightBlueAccent,
            child: Text("reset"))
          ],
        )
        );
  }
}
