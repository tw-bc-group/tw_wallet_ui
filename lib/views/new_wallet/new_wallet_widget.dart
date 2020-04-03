import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tw_wallet_ui/common/application.dart';
import 'package:tw_wallet_ui/common/theme.dart';
import 'package:tw_wallet_ui/router/routers.dart';

class NewWalletWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: WalletTheme.bgColor(),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height / 3),
              Column(children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 30),
                  child: WalletTheme.flatButton(
                      text: '创建钱包',
                      onPressed: () {
                        Application.router
                            .navigateTo(context, Routes.backupMnemonics);
                      }),
                  decoration: WalletTheme.buttonDecoration(isEnabled: true),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 30),
                  child: FlatButton(
                    child:
                        WalletTheme.flatButton(text: '恢复钱包', onPressed: () {}),
                    onPressed: () {},
                  ),
                  decoration: WalletTheme.buttonDecoration(isEnabled: true),
                ),
              ])
            ],
          ),
        ));
  }
}
