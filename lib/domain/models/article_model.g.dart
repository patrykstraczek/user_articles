// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleModel _$$_ArticleModelFromJson(Map<String, dynamic> json) =>
    _$_ArticleModel(
      json['id'] as int,
      json['title'] as String,
      json['author_id'] as int,
      json['picture'] as String,
      json['content'] as String,
    );

Map<String, dynamic> _$$_ArticleModelToJson(_$_ArticleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author_id': instance.authorId,
      'picture': instance.picture,
      'content': instance.content,
    };
