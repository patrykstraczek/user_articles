import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:user_articles/app/core/enums.dart';
import 'package:user_articles/domain/models/article_model.dart';
import 'package:user_articles/domain/repositories/articles_repository.dart';

part 'details_page_state.dart';

@injectable
class DetailsPageCubit extends Cubit<DetailsPageState> {
  DetailsPageCubit(this.articlesRepository) : super(DetailsPageState());

  final ArticlesRepository articlesRepository;

  Future<void> fetchData({required int id}) async {
    emit(
      DetailsPageState(
        status: Status.loading,
      ),
    );
    try {
      final results = await articlesRepository.getArticlesForAuthorId(id);
      emit(DetailsPageState(
        status: Status.success,
        results: results,
      ));
    } catch (error) {
      emit(
        DetailsPageState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
