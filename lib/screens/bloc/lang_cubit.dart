import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/screens/bloc/lang_state.dart';

class LangCubit extends Cubit<LangState> {
  LangCubit() : super(LangInitial());
}