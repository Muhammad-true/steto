import 'package:auto_route/auto_route.dart';
import 'package:steto_player/features/account/account.dart';
import 'package:steto_player/features/favorite/favorite.dart';
import 'package:steto_player/features/home/home.dart';
import 'package:steto_player/features/playlest/playlist.dart';
import 'package:steto_player/features/search/view/search_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: '/', children: [
          AutoRoute(page: SearchRoute.page, path: 'search'),
          AutoRoute(page: FavoriteRoute.page, path: 'favorite'),
          AutoRoute(page: PlaylistRoute.page, path: 'playlist'),
          AutoRoute(page: AccountRoute.page, path: 'account')
        ]),
      ];
}
