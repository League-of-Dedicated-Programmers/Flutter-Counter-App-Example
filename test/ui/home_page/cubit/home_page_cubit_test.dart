import 'package:bloc_test/bloc_test.dart';
import 'package:counter_example_flutter/ui/pages/home_page/cubit/home_page_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Home page cubit', () {
    blocTest('Initial state has count of zero', build: () => HomePageCubit());
    blocTest(
      'Increment counter',
      build: () => HomePageCubit(),
      act: (cubit) {
        cubit.increment();
        cubit.increment();
        cubit.increment();
      },
      expect: () => [1, 2, 3],
    );
    blocTest(
      'Decrement counter',
      build: () => HomePageCubit(),
      act: (cubit) {
        cubit.decrement();
        cubit.decrement();
        cubit.decrement();
      },
      expect: () => [-1, -2, -3],
    );
  });
}
