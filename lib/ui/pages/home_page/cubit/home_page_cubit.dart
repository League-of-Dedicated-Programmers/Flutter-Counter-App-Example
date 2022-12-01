import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageCubit extends Cubit<int> {
  HomePageCubit() : super(0);

  int get count => state;

  void increment() {
    emit(state + 1);
  }

  void decrement() {
    emit(state - 1);
  }
}
