import 'package:flutter_application_/core/services/api_services.dart';
import 'package:flutter_application_/features/Home/view_model/home_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class NewsCubit extends Cubit<NewsStastes> {
  NewsCubit() : super(NewsInitState());

  // getByCategory
  getByCategory(String category) {
    emit(NewsByCategoryLoadingState());

    try {
      ApiServices.getNewsByCategory(category).then((value) {
        emit(NewsByCategorySuccessState(model: value!));
      });
    } catch (e) {
      emit(NewsByCategoryErrorState(error: e.toString()));
    }
  }

  // getBysearch
  getBySearch(String searchKey) {
    emit(NewsBySearchLoadingState());

    try {
      ApiServices.getNewsBySearch(searchKey).then((value) {
        emit(NewsBySearchSuccessState(model: value!));
      });
    } catch (e) {
      emit(NewsBySearchErrorState(error: e.toString()));
    }
  }
     //getByScoure
   getNewsBySource(String ScoureKey) {
    emit(NewsBySearchLoadingState());

    try {
      ApiServices.getNewsBySource(ScoureKey).then((value) {
        emit(NewsBySearchSuccessState(model: value!));
      });
    } catch (e) {
      emit(NewsBySearchErrorState(error: e.toString()));
    }
  }
}
