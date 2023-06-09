import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/balances_summary_cards/balances_summary_list.dart';
import '../widgets/shorcuts/shortcuts_list.dart';

class HomeInitialPage extends StatelessWidget {
  const HomeInitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    const leftPadding = 40.0;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //TODO replace with your widget and remove the example,
            const ApoloExample(padding: leftPadding),
            const BalancesSummaryList(padding: leftPadding),
            const Padding(
              padding: EdgeInsets.only(left: leftPadding),
              child: Text("Accesos directos"),
            ),
            InkWell(
              onTap: () => context.push('/auth_tef'),
              child: const ShortcutsList(leftPadding: leftPadding)
            ),
          ],
        ),
      ),
    );
  }
}

//TODO replace with your widget and remove the example,
class ApoloExample extends StatelessWidget {
  const ApoloExample({super.key, required this.padding});

  final double padding;

  @override
  Widget build(BuildContext context) {
    const companyName =
        "Soc. Importadora Lorden S.A. letras letras letras letras";
    const companyRut = "12.345.678-9";
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Card(
        color: const Color.fromARGB(255, 144, 144, 144),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _setCompanyName(companyName),
                  _setCompanyRut(companyRut),
                ],
              ),
              _setChangeCompanyButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _setCompanyName(String companyName) => Container(
        width: 180,
        child: Text(
          companyName,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      );

  Widget _setCompanyRut(String companyRut) => Text(
        companyRut,
        style: const TextStyle(
          color: Colors.white,
        ),
      );

  Widget _setChangeCompanyButton() => const Row(
        children: [
          Icon(
            Icons.replay_outlined,
            size: 14,
            color: Colors.white,
          ),
          SizedBox(width: 5),
          Text(
            "Cambiar",
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ],
      );
}
