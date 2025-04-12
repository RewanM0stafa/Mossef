import 'package:go_router/go_router.dart';
import '../../modules/screens/Splash/presentation/views/splashView.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: "/" , builder: (context, state) => const SplashView()),

] );