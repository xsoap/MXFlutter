// Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/gestures/pointer_router.dart';
import 'package:flutter/foundation.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/gestures/events.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPointerRouterSeries() {
  var m = <String, MXFunctionInvoke>{};
  return m;
}
