import 'package:domino_calculator/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../layout/cubit/cubit.dart';
import '../../layout/cubit/states.dart';
import '../players_number/players_number_screen.dart';

// ignore: must_be_immutable
class MainScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  var firstScoreController = TextEditingController();
  var secondScoreController = TextEditingController();
  var thirdScoreController = TextEditingController();
  var fourthScoreController = TextEditingController();

  MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DominoCubit, DominoStates>(
        builder: (context, state) {
          var cubit = DominoCubit.get(context);
          int? playesNumber = DominoCubit.get(context).numOfPlayers;
          return WillPopScope(
            onWillPop:() async => false,
            child: SafeArea(
              child: Scaffold(
                body: (playesNumber == 2)
                    ? SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                      child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        cubit.firstPlayerName,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontSize: 20),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        cubit.firstPlayerScore.toString(),
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontSize: 20),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      scoreTextForm(firstScoreController),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            cubit.increaseFirstPlayerScore(int.parse(firstScoreController.text));
                                            firstScoreController.clear();
                                          },
                                          child: const Text(
                                            '+',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 20),
                                          )),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            cubit.decreaseFirstPlayerScore(int.parse(firstScoreController.text));
                                            firstScoreController.clear();
                                          },
                                          child: const Text(
                                            '-',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 20),
                                          )),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  )),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                      child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        cubit.secondPlayerName,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontSize: 20),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        '${cubit.secondPlayerScore}',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontSize: 20),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      scoreTextForm(secondScoreController),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            cubit.increaseSecondPlayerScore(int.parse(secondScoreController.text));
                                            secondScoreController.clear();
                                          },
                                          child: const Text(
                                            '+',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 20),
                                          )),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            cubit.decreaseSecondPlayerScore(int.parse(secondScoreController.text));
                                            secondScoreController.clear();
                                          },
                                          child: const Text(
                                            '-',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 20),
                                          )),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  )),
                                ],
                              ),
                              TextButton(onPressed: (){
                                cubit.resetScores();
                              }, child:const Text('reset',style: TextStyle(fontSize: 20),)),
                              TextButton(onPressed: (){
                                cubit.resetScores();
                                navigateTo(context, PlayersNumberScreen());
                              }, child:const Text('new game',style: TextStyle(fontSize: 20),)),
                            ],
                          ),
                      ),
                    )
                    : (playesNumber == 3)
                        ? SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            cubit.firstPlayerName,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 20),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            cubit.firstPlayerScore.toString(),
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 20),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          scoreTextForm(firstScoreController),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          TextButton(
                                              onPressed: () {
                                                cubit.increaseFirstPlayerScore(int.parse(firstScoreController.text));
                                                firstScoreController.clear();
                                              },
                                              child: const Text(
                                                '+',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    fontSize: 20),
                                              )),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          TextButton(
                                              onPressed: () {
                                                cubit.decreaseFirstPlayerScore(int.parse(firstScoreController.text));
                                                firstScoreController.clear();
                                              },
                                              child: const Text(
                                                '-',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    fontSize: 20),
                                              )),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                        ],
                                      )),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                          child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            cubit.secondPlayerName,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 20),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            '${cubit.secondPlayerScore}',
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 20),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          scoreTextForm(secondScoreController),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          TextButton(
                                              onPressed: () {
                                                cubit.increaseSecondPlayerScore(int.parse(secondScoreController.text));
                                                secondScoreController.clear();
                                              },
                                              child: const Text(
                                                '+',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    fontSize: 20),
                                              )),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          TextButton(
                                              onPressed: () {
                                                cubit.decreaseSecondPlayerScore(int.parse(secondScoreController.text));
                                                secondScoreController.clear();
                                              },
                                              child: const Text(
                                                '-',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    fontSize: 20),
                                              )),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                        ],
                                      )),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    cubit.thirdPlayerName,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 20),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    cubit.thirdPlayerScore.toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 20),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  scoreTextForm(thirdScoreController),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        cubit.increaseThirdPlayerScore(int.parse(thirdScoreController.text));
                                        thirdScoreController.clear();
                                      },
                                      child: const Text(
                                        '+',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontSize: 20),
                                      )),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        cubit.decreaseThirdPlayerScore(int.parse(thirdScoreController.text));
                                        thirdScoreController.clear();
                                      },
                                      child: const Text(
                                        '-',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontSize: 20),
                                      )),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                    ],
                                  ),
                                  TextButton(onPressed: (){
                                    cubit.resetScores();
                                  }, child:const Text('reset',style: TextStyle(fontSize: 20),)),
                                  TextButton(onPressed: (){
                                    cubit.resetScores();
                                    navigateTo(context, PlayersNumberScreen());
                                  }, child:const Text('new game',style: TextStyle(fontSize: 20),)),
                                ],
                              ),
                          ),
                        )
                        : SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            cubit.firstPlayerName,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 20),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            cubit.firstPlayerScore.toString(),
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 20),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          scoreTextForm(firstScoreController),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          TextButton(
                                              onPressed: () {
                                                cubit.increaseFirstPlayerScore(int.parse(firstScoreController.text));
                                                firstScoreController.clear();
                                              },
                                              child: const Text(
                                                '+',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    fontSize: 20),
                                              )),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          TextButton(
                                              onPressed: () {
                                                cubit.decreaseFirstPlayerScore(int.parse(firstScoreController.text));
                                                firstScoreController.clear();
                                              },
                                              child: const Text(
                                                '-',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    fontSize: 20),
                                              )),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                        ],
                                      )),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                          child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            cubit.secondPlayerName,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 20),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            '${cubit.secondPlayerScore}',
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 20),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          scoreTextForm(secondScoreController),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          TextButton(
                                              onPressed: () {
                                                cubit.increaseSecondPlayerScore(int.parse(secondScoreController.text));
                                                secondScoreController.clear();
                                              },
                                              child: const Text(
                                                '+',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    fontSize: 20),
                                              )),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          TextButton(
                                              onPressed: () {
                                                cubit.decreaseSecondPlayerScore(int.parse(secondScoreController.text));
                                                secondScoreController.clear();
                                              },
                                              child: const Text(
                                                '-',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    fontSize: 20),
                                              )),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                        ],
                                      )),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            cubit.thirdPlayerName,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 20),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            cubit.thirdPlayerScore.toString(),
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 20),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          scoreTextForm(thirdScoreController),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          TextButton(
                                              onPressed: () {
                                                cubit.increaseThirdPlayerScore(int.parse(thirdScoreController.text));
                                                thirdScoreController.clear();
                                              },
                                              child: const Text(
                                                '+',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    fontSize: 20),
                                              )),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          TextButton(
                                              onPressed: () {
                                                cubit.decreaseThirdPlayerScore(int.parse(thirdScoreController.text));
                                                thirdScoreController.clear();
                                              },
                                              child: const Text(
                                                '-',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    fontSize: 20),
                                              )),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                        ],
                                      )),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                          child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            cubit.fourthPlayerName,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 20),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            '${cubit.fourthPlayerScore}',
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 20),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          scoreTextForm(fourthScoreController),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          TextButton(
                                              onPressed: () {
                                                cubit.increaseFourthPlayerScore(int.parse(fourthScoreController.text));
                                                fourthScoreController.clear();
                                              },
                                              child: const Text(
                                                '+',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    fontSize: 20),
                                              )),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          TextButton(
                                              onPressed: () {
                                                cubit.decreaseFourthPlayerScore(int.parse(fourthScoreController.text));
                                                fourthScoreController.clear();
                                              },
                                              child: const Text(
                                                '-',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    fontSize: 20),
                                              )),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                        ],
                                      )),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      TextButton(onPressed: (){
                                        cubit.resetScores();
                                      }, child:const Text('reset',style: TextStyle(fontSize: 20),)),
                                      TextButton(onPressed: (){
                                        cubit.resetScores();
                                        navigateTo(context, PlayersNumberScreen());
                                      }, child:const Text('new game',style: TextStyle(fontSize: 20),))
                                    ],
                                  )
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
