import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:quran_reader/feature/quran_page/model/models.dart';

@immutable
abstract class HomePageEvent extends Equatable {
  const HomePageEvent();

  @override
  List<Object> get props => [];
}

class HomePageViewTappedEvent extends HomePageEvent {}

class HomePageShowNavigatorTappedEvent extends HomePageEvent {
  final QuranPage quranPage;

  HomePageShowNavigatorTappedEvent({@required this.quranPage});

  @override
  List<Object> get props => [quranPage];
}

class HomePageHideNavigatorTappedEvent extends HomePageEvent {
  final QuranPage quranPage;

  HomePageHideNavigatorTappedEvent({@required this.quranPage});

  @override
  List<Object> get props => [quranPage];
}