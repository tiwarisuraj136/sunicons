library sunicons;

import "package:flutter/widgets.dart";

class SunIconData extends IconData {
  const SunIconData(int suryaPoint)
      : super(
          suryaPoint,
          fontFamily: "SunIcons",
          fontPackage: "sunicons",
        );
}

class EvaIconData extends IconData {
  const EvaIconData(int codePoint)
      : super(
    codePoint,
    fontFamily: 'EvaIcons',
    fontPackage: 'eva_icons_flutter',
  );
}