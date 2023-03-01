import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_articles/app/injection_container.dart';
import 'package:user_articles/domain/models/article_model.dart';
import 'package:user_articles/features/details/cubit/details_page_cubit.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key, required this.model}) : super(key: key);

  final ArticleModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(model.title),
        centerTitle: true,
      ),
      body: BlocProvider<DetailsPageCubit>(
        create: (context) {
          return getIt()
            ..fetchData(
              id: model.id,
            );
        },
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(model.picture),
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                children: [Text(model.content)],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
