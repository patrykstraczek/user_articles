part of 'details_page_cubit.dart';


class DetailsPageState {
  DetailsPageState({this.results = const [],
    this.status = Status.initial,
    this.errorMessage,
  });

  final List<ArticleModel> results;
  final Status status;
  final String? errorMessage;
}
