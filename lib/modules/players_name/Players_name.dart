import 'package:domino_calculator/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../layout/cubit/cubit.dart';
import '../../layout/cubit/states.dart';
import '../main_page/main_screen.dart';

// ignore: must_be_immutable
class PlayersNamesScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  var firstNameController = TextEditingController();
  var secondNameController = TextEditingController();
  var thirdNameController = TextEditingController();
  var fourthNameController = TextEditingController();

  PlayersNamesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DominoCubit, DominoStates>(
        builder: (context, state) {
          var cubit = DominoCubit.get(context);
          int? playesNumber = DominoCubit.get(context).numOfPlayers;
          return SafeArea(
            child: Scaffold(
              body: (playesNumber == 2)
                  ? Form(
                      key: formKey,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const Text(
                                'please, enter players name',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 20),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              mainText('first'),
                              const SizedBox(
                                height: 20,
                              ),
                              mainTextForm(firstNameController, 'first'),
                              const SizedBox(
                                height: 15,
                              ),
                              mainText('second'),
                              const SizedBox(
                                height: 15,
                              ),
                              mainTextForm(secondNameController, 'second'),
                              const SizedBox(
                                height: 15,
                              ),
                              Center(
                                child: TextButton(
                                  child: const Text('start',
                                      style: TextStyle(fontSize: 20)),
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      cubit.setTwoPlayersNames(
                                          firstNameController.text,
                                          secondNameController.text);
                                      firstNameController.clear();
                                      secondNameController.clear();

                                      navigateTo(context, MainScreen());
                                    }
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  : (playesNumber == 3)
                      ? Form(
                          key: formKey,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  const Text(
                                    'please, enter players name',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 20),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  mainText('first'),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  mainTextForm(firstNameController, 'first'),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  mainText('second'),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  mainTextForm(secondNameController, 'second'),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  mainText('third'),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  mainTextForm(thirdNameController, 'third'),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Center(
                                    child: TextButton(
                                      child: const Text('start',
                                          style: TextStyle(fontSize: 20)),
                                      onPressed: () {
                                        if (formKey.currentState!.validate()) {
                                          cubit.setThreePlayersNames(
                                              firstNameController.text,
                                              secondNameController.text,
                                              thirdNameController.text);
                                          firstNameController.clear();
                                          secondNameController.clear();
                                          thirdNameController.clear();
                                          navigateTo(context, MainScreen());
                                        }
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      : Form(
                          key: formKey,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  const Text(
                                    'please, enter players name',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 20),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  mainText('first'),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  mainTextForm(firstNameController, 'first'),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  mainText('second'),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  mainTextForm(secondNameController, 'second'),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  mainText('third'),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  mainTextForm(thirdNameController, 'third'),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  mainText('fourth'),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  mainTextForm(fourthNameController, 'fourth'),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Center(
                                    child: TextButton(
                                      child: const Text('start',
                                          style: TextStyle(fontSize: 20)),
                                      onPressed: () {
                                        if (formKey.currentState!.validate()) {
                                          cubit.setFourPlayersNames(
                                              firstNameController.text,
                                              secondNameController.text,
                                              thirdNameController.text,
                                              fourthNameController.text);
                                          firstNameController.clear();
                                          secondNameController.clear();
                                          thirdNameController.clear();
                                          fourthNameController.clear();
                                          navigateAndFinish(
                                              context, MainScreen());
                                        }
                                      },
                                    ),
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
