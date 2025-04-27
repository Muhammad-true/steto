import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:steto_player/router/router.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        SearchRoute(),
        FavoriteRoute(),
        PlaylistRoute(),
        AccountRoute()
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.white, // Цвет фона панели
              selectedItemColor: Colors.blue, // Цвет выбранного элемента
              unselectedItemColor: Colors.grey, // Цвет НЕ выбранных элементов
              currentIndex: tabsRouter.activeIndex,
              onTap: (index) => _openPage(index, tabsRouter),
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: 'поиск'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite), label: 'избранние'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.playlist_add_rounded), label: 'плейлист'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_balance_outlined),
                    label: 'аккаунт')
              ]),
        );
      },
    );
  }

  void _openPage(int index, TabsRouter tabsRouter) {
    tabsRouter.setActiveIndex(index);
  }
}
