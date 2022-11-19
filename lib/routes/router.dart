import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/ui/home_page.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/ui/posts/posts_page.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/ui/posts/single_post_page.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/ui/settings/settings_page.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/ui/users/user_profile_page.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/ui/users/users_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: HomePage,
      children: [
        AutoRoute(
          path: 'posts',
          name: 'PostsRouter',
          //EmptyRouterPage нужен всегда для использования вложенной навигации
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: PostsPage),
            AutoRoute(path: ':postId', page: SinglePostPage),
          ],
        ),
        AutoRoute(
          path: 'users',
          name: 'UsersRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: UsersPage),
            AutoRoute(path: ':userId', page: UserProfilePage),
          ],
        ),
        AutoRoute(
          path: 'settings',
          name: 'SettingsRouter',
          page: SettingsPage,
        )
      ]
    )
  ],
)
class $AppRouter {}