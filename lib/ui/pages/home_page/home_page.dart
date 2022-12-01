import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/home_page_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blah blah blah'),
      ),
      body: BlocProvider(
        create: (context) => HomePageCubit(),
        child: const _HomePageContent(),
      ),
    );
  }
}

class _HomePageContent extends StatelessWidget {
  const _HomePageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageCubit, int>(
      builder: (context, state) {
        return Column(
          children: [
            Center(
                child: Text(
              'Count: $state',
              style: TextStyle(
                  fontSize: 69, color: Theme.of(context).colorScheme.error),
            )),
            ElevatedButton(
                onPressed: BlocProvider.of<HomePageCubit>(context).increment,
                child: const Text("Increment count.",
                    style: TextStyle(fontSize: 30))),
            ElevatedButton(
                onPressed: BlocProvider.of<HomePageCubit>(context).decrement,
                child: const Text("Decrement count",
                    style: TextStyle(fontSize: 30))),
            if (state > 10) const Text("Wow that's huge")
          ],
        );
      },
    );
  }
}
