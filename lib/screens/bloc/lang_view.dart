import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/screens/bloc/lang_cubit.dart';
import 'package:localization/screens/bloc/lang_state.dart';
import 'package:localization/screens/home_page.dart';

class LangView extends StatelessWidget {
  const LangView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LangCubit(),
      child: BlocConsumer<LangCubit,LangState>(
        listener: (context, state) {},
        builder: (context,state){
          return  HomePage(contextt: context,);
        },
      ),
    );
  }
}