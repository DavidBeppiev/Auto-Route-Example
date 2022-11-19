import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/data/app_data.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/routes/router.gr.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/ui/widgets.dart';

class UserProfilePage extends StatelessWidget {
  final int userId;

  const UserProfilePage({
    Key? key,
    required this.userId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = User.users[userId - 1];
    return Scaffold(
      backgroundColor: user.color,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          UserAvatar(
            avatarColor: Colors.white,
            username: 'user${user.id}',
          ),
          ElevatedButton(
            onPressed: () => context.navigateTo(
              PostsRouter(children: [SinglePostRoute(postId: user.id)]),
            ),
            child: const Text('Go to user post'),
          ),
        ]),
      ),
    );
  }
}
