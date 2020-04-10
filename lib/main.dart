import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tw_wallet_ui/global/common/theme.dart';
import 'package:tw_wallet_ui/router/routers.dart';
import 'package:tw_wallet_ui/views/home/home_store.dart';

import 'global/common/application.dart';
import 'global/common/get_it.dart';
import 'global/common/secure_storage.dart';
import 'global/store/mnemonics.dart';

Future<void> main() async {
  getItInit();
  WidgetsFlutterBinding.ensureInitialized();
  bool hasPin = await SecureStorage.get(SecureStorageItem.MasterKey) != null;
  String mnemonics = await SecureStorage.get(SecureStorageItem.Mnemonics);

  var initialRoute = !hasPin
      ? Routes.inputPin
      : mnemonics == null ? Routes.newWallet : Routes.home;
  runApp(MyApp(initialRoute: initialRoute));
}

class MyApp extends StatelessWidget {
  final initialRoute;

  MyApp({@required this.initialRoute}) {
    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<MnemonicsStore>(create: (_) => MnemonicsStore()),
        Provider<HomeStore>(create: (_) => HomeStore())
      ],
      child: MaterialApp(
        title: 'TW Wallet',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            primaryColor: WalletTheme.rgbColor('#3e71c0'),
            disabledColor: Colors.grey),
        initialRoute: initialRoute,
        onGenerateRoute: Application.router.generator,
      ),
    );
  }
}
