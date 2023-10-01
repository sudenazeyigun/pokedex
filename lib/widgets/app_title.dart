import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/constants.dart';
import 'package:pokedex/constants/ui_helper.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({super.key});

  @override
  State<AppTitle> createState() => _AppTitleState();
}

String pokeballImageUrl = 'images/pokeball.png';

class _AppTitleState extends State<AppTitle> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: UIHelper.getDefaultPadding(),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                Constants.title,
                style: Constants.getTitleTextStyle(),
              )),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Image.asset(
            pokeballImageUrl,
            width: ScreenUtil().orientation == Orientation.portrait
                ? 0.1.sh
                : 0.1.sw,
            fit: BoxFit.fitWidth,
          ),
        )
      ],
    );
  }
}
