import 'package:domino_calculator/layout/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../layout/cubit/states.dart';
import '../../shared/components/components.dart';
import '../players_name/Players_name.dart';

class PlayersNumberScreen extends StatelessWidget {
  const PlayersNumberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DominoCubit, DominoStates>(
        builder: (context, state) {
          return WillPopScope(
            onWillPop:() async => false,
            child: Scaffold(
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:  SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding:  EdgeInsets.all(24.0),
                          child: Text(
                            'please,Select number of players',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: TextButton(
                              onPressed: () {
                                DominoCubit.get(context).changeNumberOfPlayers(2);
                                navigateTo(context,  PlayersNamesScreen());
                              },
                              child: const Text(
                                'TWO PLAYERS',
                                style: TextStyle(fontSize: 20),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: TextButton(
                              onPressed: () {
                                DominoCubit.get(context).changeNumberOfPlayers(3);
                                navigateTo(context,  PlayersNamesScreen());
                              },
                              child: const Text(
                                'THREE PLAYERS',
                                style: TextStyle(fontSize: 20),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: TextButton(
                              onPressed: () {
                                DominoCubit.get(context).changeNumberOfPlayers(4);
                                navigateTo(context,  PlayersNamesScreen());
                              },
                              child: const Text(
                                'FOUR PLAYERS',
                                style: TextStyle(fontSize: 20),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        listener: (context, state) {});
  }
}
