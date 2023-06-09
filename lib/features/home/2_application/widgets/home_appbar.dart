import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: Column(
        children: [
          Expanded(child: Container()),
          Row(
            children: [
              SizedBox(
                height: 50,
                child: SvgPicture.asset('assets/logos/logo_be_empresas.svg'),
              ),
              Expanded(child: Container()),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
