import 'package:go_router/go_router.dart';
import 'package:my_bookly/features/home/presentation/views/book_details_view.dart';
import 'package:my_bookly/features/home/presentation/views/home_view.dart';
import 'package:my_bookly/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeViewRoute = '/homeView';
  static const kBookDetailsViewRoute = '/bookDetailsView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeViewRoute,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kBookDetailsViewRoute,
      builder: (context, state) => const BookDetailsView(),
    ),
  ]);
}
