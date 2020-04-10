import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:tw_wallet_ui/global/common/application.dart';
import 'package:tw_wallet_ui/router/routers.dart';
import 'package:tw_wallet_ui/views/home/home_store.dart';

import 'assets/assets_page.dart';
import 'assets/assets_store.dart';
import 'discovery/discovery.dart';
import 'identity/identity_page.dart';
import 'my/my_page.dart';

class Home extends StatefulWidget {
  Home({this.defaultIndex = 0});
  final int defaultIndex;

  @override
  HomeState createState() => HomeState(defaultIndex: defaultIndex);
}

class HomeState extends State<Home> {
  HomeState({this.defaultIndex = 0});

  static final List<BottomNavigationBarItem> _barItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
    BottomNavigationBarItem(icon: Icon(Icons.more), title: Text('发现')),
    BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('身份')),
    BottomNavigationBarItem(icon: Icon(Icons.account_box), title: Text('我')),
  ];

  static int get identityIndex => 2;

  // _barItems.indexWhere((item) => (item.title as Text).data == '');

  int defaultIndex;
  HomeStore homeStore;

  final List<Widget> _pages = [
    AssetsPage(store: AssetsStore()),
    DiscoveryPage(),
    IdentityPage(),
    MyPage()
  ];

  @override
  void initState() {
    homeStore = Provider.of<HomeStore>(context, listen: false);
    homeStore.changePage(defaultIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Observer(builder: (_) {
        return Scaffold(
          body: SafeArea(child: _pages[homeStore.currentPage]),
          bottomNavigationBar: BottomNavigationBar(
            items: _barItems,
            currentIndex: homeStore.currentPage,
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.blue,
            selectedFontSize: 12,
            onTap: (index) {
              homeStore.changePage(index);
            },
          ),
          floatingActionButton: homeStore.currentPage == HomeState.identityIndex
              ? FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () => Application.router
                      .navigateTo(context, Routes.newIdentity))
              : null,
        );
      });
}
