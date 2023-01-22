import 'package:domino_calculator/layout/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DominoCubit extends Cubit<DominoStates> {
  DominoCubit() : super(DominoInitialState());

  static DominoCubit get(context) => BlocProvider.of(context);

  int? numOfPlayers;
  String firstPlayerName = 'First Player';
  String secondPlayerName = 'Second Player';
  String thirdPlayerName = 'Third Player';
  String fourthPlayerName = 'Fourth Player';
  int firstPlayerScore = 0;
  int secondPlayerScore = 0;
  int thirdPlayerScore = 0;
  int fourthPlayerScore = 0;

  void changeNumberOfPlayers(int num) {
    numOfPlayers = num;
    emit(NumberOfPlayersSuccessState());
  }

  void increaseFirstPlayerScore(int num) {
    firstPlayerScore = firstPlayerScore + num;
    emit(IncreaseFirstPlayerScoreSuccessState());
  }

  void decreaseFirstPlayerScore(int num) {
    firstPlayerScore = firstPlayerScore - num;
    emit(DecreaseFirstPlayerScoreSuccessState());
  }

  void increaseSecondPlayerScore(int num) {
    secondPlayerScore = secondPlayerScore + num;
    emit(IncreaseSecondPlayerScoreSuccessState());
  }

  void decreaseSecondPlayerScore(int num) {
    secondPlayerScore = secondPlayerScore - num;
    emit(DecreaseSecondPlayerScoreSuccessState());
  }

  void increaseThirdPlayerScore(int num) {
    thirdPlayerScore = thirdPlayerScore + num;
    emit(IncreaseThirdPlayerScoreSuccessState());
  }

  void decreaseThirdPlayerScore(int num) {
    thirdPlayerScore = thirdPlayerScore - num;
    emit(DecreaseThirdPlayerScoreSuccessState());
  }

  void increaseFourthPlayerScore(int num) {
    fourthPlayerScore = fourthPlayerScore + num;
    emit(IncreaseFourthPlayerScoreSuccessState());
  }

  void decreaseFourthPlayerScore(int num) {
    fourthPlayerScore = fourthPlayerScore + num;
    emit(DecreaseFourthPlayerScoreSuccessState());
  }

  void setTwoPlayersNames(String fName, String sName) {
    firstPlayerName = fName;
    secondPlayerName = sName;
    emit(SetTwoNamesSuccessState());
  }

  void setThreePlayersNames(String fName, String sName, String tName) {
    firstPlayerName = fName;
    secondPlayerName = sName;
    thirdPlayerName = tName;
    emit(SetThreeNamesSuccessState());
  }

  void setFourPlayersNames(String fName, String sName, String tName, foName) {
    firstPlayerName = fName;
    secondPlayerName = sName;
    thirdPlayerName = tName;
    fourthPlayerName = foName;
    emit(SetFourNamesSuccessState());
  }
  void resetScores(){
    firstPlayerScore=0;
    secondPlayerScore=0;
    thirdPlayerScore=0;
    fourthPlayerScore=0;
    emit(ResetScoreSuccessState());
  }
}
