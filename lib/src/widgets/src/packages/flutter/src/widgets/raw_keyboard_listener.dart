// Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/raw_keyboard_listener.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/focus_scope.dart';
import 'package:flutter/src/widgets/framework.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerRawKeyboardListenerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_rawKeyboardListener.funName] = _rawKeyboardListener;
  return m;
}
var _rawKeyboardListener = MXFunctionInvoke(
  "RawKeyboardListener",
  ({
    Key key,
    FocusNode focusNode,
    bool autofocus = false,
    bool includeSemantics = true,
    dynamic onKey,
    Widget child,
  }) => RawKeyboardListener(
    key: key,
    focusNode: focusNode,
    autofocus: autofocus,
    includeSemantics: includeSemantics,
    onKey: createValueChangedGenericClosure<RawKeyEvent>(_rawKeyboardListener.buildOwner, onKey),
    child: child,
  ),
  [
    "key",
    "focusNode",
    "autofocus",
    "includeSemantics",
    "onKey",
    "child",
  ],
);
