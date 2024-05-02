import 'package:basketball_point_counter/cubit/counter_cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit(): super(TeamAIncrementPoint());
  int teamAPoint = 0;
  int teamBPoint = 0;
  void teamIncrement(String team,int buttonNumber){
    if(team =='A'){
      teamAPoint +=buttonNumber;
      emit(TeamAIncrementPoint());
    }else if(team =='B'){
      teamBPoint +=buttonNumber;
      emit(TeamBIncrementPoint());
    }else{
      teamAPoint = 0;
      teamBPoint = 0;
      emit(ResetTeamsPoints());
    }
  }
}