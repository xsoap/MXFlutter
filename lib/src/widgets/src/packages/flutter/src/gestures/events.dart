// Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/gestures/events.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/gestures/constants.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerEventsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_pointerAddedEvent.funName] = _pointerAddedEvent;
  m[_pointerRemovedEvent.funName] = _pointerRemovedEvent;
  m[_pointerHoverEvent.funName] = _pointerHoverEvent;
  m[_pointerEnterEvent.funName] = _pointerEnterEvent;
  m[_pointerEnterEvent_fromHoverEvent.funName] = _pointerEnterEvent_fromHoverEvent;
  m[_pointerEnterEvent_fromMouseEvent.funName] = _pointerEnterEvent_fromMouseEvent;
  m[_pointerExitEvent.funName] = _pointerExitEvent;
  m[_pointerExitEvent_fromHoverEvent.funName] = _pointerExitEvent_fromHoverEvent;
  m[_pointerExitEvent_fromMouseEvent.funName] = _pointerExitEvent_fromMouseEvent;
  m[_pointerDownEvent.funName] = _pointerDownEvent;
  m[_pointerMoveEvent.funName] = _pointerMoveEvent;
  m[_pointerUpEvent.funName] = _pointerUpEvent;
  m[_pointerScrollEvent.funName] = _pointerScrollEvent;
  m[_pointerCancelEvent.funName] = _pointerCancelEvent;
  return m;
}
var _pointerAddedEvent = MXFunctionInvoke(
  "PointerAddedEvent",
  ({
    Duration timeStamp = Duration.zero,
    PointerDeviceKind kind = PointerDeviceKind.touch,
    int device = 0,
    Offset position = Offset.zero,
    Offset localPosition,
    bool obscured = false,
    dynamic pressureMin = 1.0,
    dynamic pressureMax = 1.0,
    dynamic distance = 0.0,
    dynamic distanceMax = 0.0,
    dynamic radiusMin = 0.0,
    dynamic radiusMax = 0.0,
    dynamic orientation = 0.0,
    dynamic tilt = 0.0,
    Matrix4 transform,
    PointerAddedEvent original,
    int embedderId = 0,
  }) => PointerAddedEvent(
    timeStamp: timeStamp,
    kind: kind,
    device: device,
    position: position,
    localPosition: localPosition,
    obscured: obscured,
    pressureMin: pressureMin?.toDouble(),
    pressureMax: pressureMax?.toDouble(),
    distance: distance?.toDouble(),
    distanceMax: distanceMax?.toDouble(),
    radiusMin: radiusMin?.toDouble(),
    radiusMax: radiusMax?.toDouble(),
    orientation: orientation?.toDouble(),
    tilt: tilt?.toDouble(),
    transform: transform,
    original: original,
    embedderId: embedderId,
  ),
  [
    "timeStamp",
    "kind",
    "device",
    "position",
    "localPosition",
    "obscured",
    "pressureMin",
    "pressureMax",
    "distance",
    "distanceMax",
    "radiusMin",
    "radiusMax",
    "orientation",
    "tilt",
    "transform",
    "original",
    "embedderId",
  ],
);
var _pointerRemovedEvent = MXFunctionInvoke(
  "PointerRemovedEvent",
  ({
    Duration timeStamp = Duration.zero,
    PointerDeviceKind kind = PointerDeviceKind.touch,
    int device = 0,
    Offset position = Offset.zero,
    Offset localPosition,
    bool obscured = false,
    dynamic pressureMin = 1.0,
    dynamic pressureMax = 1.0,
    dynamic distanceMax = 0.0,
    dynamic radiusMin = 0.0,
    dynamic radiusMax = 0.0,
    Matrix4 transform,
    PointerRemovedEvent original,
    int embedderId = 0,
  }) => PointerRemovedEvent(
    timeStamp: timeStamp,
    kind: kind,
    device: device,
    position: position,
    localPosition: localPosition,
    obscured: obscured,
    pressureMin: pressureMin?.toDouble(),
    pressureMax: pressureMax?.toDouble(),
    distanceMax: distanceMax?.toDouble(),
    radiusMin: radiusMin?.toDouble(),
    radiusMax: radiusMax?.toDouble(),
    transform: transform,
    original: original,
    embedderId: embedderId,
  ),
  [
    "timeStamp",
    "kind",
    "device",
    "position",
    "localPosition",
    "obscured",
    "pressureMin",
    "pressureMax",
    "distanceMax",
    "radiusMin",
    "radiusMax",
    "transform",
    "original",
    "embedderId",
  ],
);
var _pointerHoverEvent = MXFunctionInvoke(
  "PointerHoverEvent",
  ({
    Duration timeStamp = Duration.zero,
    PointerDeviceKind kind = PointerDeviceKind.touch,
    int device = 0,
    Offset position = Offset.zero,
    Offset localPosition,
    Offset delta = Offset.zero,
    Offset localDelta,
    int buttons = 0,
    bool obscured = false,
    dynamic pressureMin = 1.0,
    dynamic pressureMax = 1.0,
    dynamic distance = 0.0,
    dynamic distanceMax = 0.0,
    dynamic size = 0.0,
    dynamic radiusMajor = 0.0,
    dynamic radiusMinor = 0.0,
    dynamic radiusMin = 0.0,
    dynamic radiusMax = 0.0,
    dynamic orientation = 0.0,
    dynamic tilt = 0.0,
    bool synthesized = false,
    Matrix4 transform,
    PointerHoverEvent original,
    int embedderId = 0,
  }) => PointerHoverEvent(
    timeStamp: timeStamp,
    kind: kind,
    device: device,
    position: position,
    localPosition: localPosition,
    delta: delta,
    localDelta: localDelta,
    buttons: buttons,
    obscured: obscured,
    pressureMin: pressureMin?.toDouble(),
    pressureMax: pressureMax?.toDouble(),
    distance: distance?.toDouble(),
    distanceMax: distanceMax?.toDouble(),
    size: size?.toDouble(),
    radiusMajor: radiusMajor?.toDouble(),
    radiusMinor: radiusMinor?.toDouble(),
    radiusMin: radiusMin?.toDouble(),
    radiusMax: radiusMax?.toDouble(),
    orientation: orientation?.toDouble(),
    tilt: tilt?.toDouble(),
    synthesized: synthesized,
    transform: transform,
    original: original,
    embedderId: embedderId,
  ),
  [
    "timeStamp",
    "kind",
    "device",
    "position",
    "localPosition",
    "delta",
    "localDelta",
    "buttons",
    "obscured",
    "pressureMin",
    "pressureMax",
    "distance",
    "distanceMax",
    "size",
    "radiusMajor",
    "radiusMinor",
    "radiusMin",
    "radiusMax",
    "orientation",
    "tilt",
    "synthesized",
    "transform",
    "original",
    "embedderId",
  ],
);
var _pointerEnterEvent = MXFunctionInvoke(
  "PointerEnterEvent",
  ({
    Duration timeStamp = Duration.zero,
    PointerDeviceKind kind = PointerDeviceKind.touch,
    int device = 0,
    Offset position = Offset.zero,
    Offset localPosition,
    Offset delta = Offset.zero,
    Offset localDelta,
    int buttons = 0,
    bool obscured = false,
    dynamic pressureMin = 1.0,
    dynamic pressureMax = 1.0,
    dynamic distance = 0.0,
    dynamic distanceMax = 0.0,
    dynamic size = 0.0,
    dynamic radiusMajor = 0.0,
    dynamic radiusMinor = 0.0,
    dynamic radiusMin = 0.0,
    dynamic radiusMax = 0.0,
    dynamic orientation = 0.0,
    dynamic tilt = 0.0,
    bool down = false,
    bool synthesized = false,
    Matrix4 transform,
    PointerEnterEvent original,
    int embedderId = 0,
  }) => PointerEnterEvent(
    timeStamp: timeStamp,
    kind: kind,
    device: device,
    position: position,
    localPosition: localPosition,
    delta: delta,
    localDelta: localDelta,
    buttons: buttons,
    obscured: obscured,
    pressureMin: pressureMin?.toDouble(),
    pressureMax: pressureMax?.toDouble(),
    distance: distance?.toDouble(),
    distanceMax: distanceMax?.toDouble(),
    size: size?.toDouble(),
    radiusMajor: radiusMajor?.toDouble(),
    radiusMinor: radiusMinor?.toDouble(),
    radiusMin: radiusMin?.toDouble(),
    radiusMax: radiusMax?.toDouble(),
    orientation: orientation?.toDouble(),
    tilt: tilt?.toDouble(),
    down: down,
    synthesized: synthesized,
    transform: transform,
    original: original,
    embedderId: embedderId,
  ),
  [
    "timeStamp",
    "kind",
    "device",
    "position",
    "localPosition",
    "delta",
    "localDelta",
    "buttons",
    "obscured",
    "pressureMin",
    "pressureMax",
    "distance",
    "distanceMax",
    "size",
    "radiusMajor",
    "radiusMinor",
    "radiusMin",
    "radiusMax",
    "orientation",
    "tilt",
    "down",
    "synthesized",
    "transform",
    "original",
    "embedderId",
  ],
);
var _pointerEnterEvent_fromHoverEvent = MXFunctionInvoke(
  "PointerEnterEvent.fromHoverEvent",
  ({
    PointerHoverEvent event,
  }) => PointerEnterEvent.fromHoverEvent(
    event,
  ),
  [
    "event",
  ],
);
var _pointerEnterEvent_fromMouseEvent = MXFunctionInvoke(
  "PointerEnterEvent.fromMouseEvent",
  ({
    PointerEvent event,
  }) => PointerEnterEvent.fromMouseEvent(
    event,
  ),
  [
    "event",
  ],
);
var _pointerExitEvent = MXFunctionInvoke(
  "PointerExitEvent",
  ({
    Duration timeStamp = Duration.zero,
    PointerDeviceKind kind = PointerDeviceKind.touch,
    int device = 0,
    Offset position = Offset.zero,
    Offset localPosition,
    Offset delta = Offset.zero,
    Offset localDelta,
    int buttons = 0,
    bool obscured = false,
    dynamic pressureMin = 1.0,
    dynamic pressureMax = 1.0,
    dynamic distance = 0.0,
    dynamic distanceMax = 0.0,
    dynamic size = 0.0,
    dynamic radiusMajor = 0.0,
    dynamic radiusMinor = 0.0,
    dynamic radiusMin = 0.0,
    dynamic radiusMax = 0.0,
    dynamic orientation = 0.0,
    dynamic tilt = 0.0,
    bool down = false,
    bool synthesized = false,
    Matrix4 transform,
    PointerExitEvent original,
    int embedderId = 0,
  }) => PointerExitEvent(
    timeStamp: timeStamp,
    kind: kind,
    device: device,
    position: position,
    localPosition: localPosition,
    delta: delta,
    localDelta: localDelta,
    buttons: buttons,
    obscured: obscured,
    pressureMin: pressureMin?.toDouble(),
    pressureMax: pressureMax?.toDouble(),
    distance: distance?.toDouble(),
    distanceMax: distanceMax?.toDouble(),
    size: size?.toDouble(),
    radiusMajor: radiusMajor?.toDouble(),
    radiusMinor: radiusMinor?.toDouble(),
    radiusMin: radiusMin?.toDouble(),
    radiusMax: radiusMax?.toDouble(),
    orientation: orientation?.toDouble(),
    tilt: tilt?.toDouble(),
    down: down,
    synthesized: synthesized,
    transform: transform,
    original: original,
    embedderId: embedderId,
  ),
  [
    "timeStamp",
    "kind",
    "device",
    "position",
    "localPosition",
    "delta",
    "localDelta",
    "buttons",
    "obscured",
    "pressureMin",
    "pressureMax",
    "distance",
    "distanceMax",
    "size",
    "radiusMajor",
    "radiusMinor",
    "radiusMin",
    "radiusMax",
    "orientation",
    "tilt",
    "down",
    "synthesized",
    "transform",
    "original",
    "embedderId",
  ],
);
var _pointerExitEvent_fromHoverEvent = MXFunctionInvoke(
  "PointerExitEvent.fromHoverEvent",
  ({
    PointerHoverEvent event,
  }) => PointerExitEvent.fromHoverEvent(
    event,
  ),
  [
    "event",
  ],
);
var _pointerExitEvent_fromMouseEvent = MXFunctionInvoke(
  "PointerExitEvent.fromMouseEvent",
  ({
    PointerEvent event,
  }) => PointerExitEvent.fromMouseEvent(
    event,
  ),
  [
    "event",
  ],
);
var _pointerDownEvent = MXFunctionInvoke(
  "PointerDownEvent",
  ({
    Duration timeStamp = Duration.zero,
    int pointer = 0,
    PointerDeviceKind kind = PointerDeviceKind.touch,
    int device = 0,
    Offset position = Offset.zero,
    Offset localPosition,
    int buttons = 1,
    bool obscured = false,
    dynamic pressure = 1.0,
    dynamic pressureMin = 1.0,
    dynamic pressureMax = 1.0,
    dynamic distanceMax = 0.0,
    dynamic size = 0.0,
    dynamic radiusMajor = 0.0,
    dynamic radiusMinor = 0.0,
    dynamic radiusMin = 0.0,
    dynamic radiusMax = 0.0,
    dynamic orientation = 0.0,
    dynamic tilt = 0.0,
    Matrix4 transform,
    PointerDownEvent original,
    int embedderId = 0,
  }) => PointerDownEvent(
    timeStamp: timeStamp,
    pointer: pointer,
    kind: kind,
    device: device,
    position: position,
    localPosition: localPosition,
    buttons: buttons,
    obscured: obscured,
    pressure: pressure?.toDouble(),
    pressureMin: pressureMin?.toDouble(),
    pressureMax: pressureMax?.toDouble(),
    distanceMax: distanceMax?.toDouble(),
    size: size?.toDouble(),
    radiusMajor: radiusMajor?.toDouble(),
    radiusMinor: radiusMinor?.toDouble(),
    radiusMin: radiusMin?.toDouble(),
    radiusMax: radiusMax?.toDouble(),
    orientation: orientation?.toDouble(),
    tilt: tilt?.toDouble(),
    transform: transform,
    original: original,
    embedderId: embedderId,
  ),
  [
    "timeStamp",
    "pointer",
    "kind",
    "device",
    "position",
    "localPosition",
    "buttons",
    "obscured",
    "pressure",
    "pressureMin",
    "pressureMax",
    "distanceMax",
    "size",
    "radiusMajor",
    "radiusMinor",
    "radiusMin",
    "radiusMax",
    "orientation",
    "tilt",
    "transform",
    "original",
    "embedderId",
  ],
);
var _pointerMoveEvent = MXFunctionInvoke(
  "PointerMoveEvent",
  ({
    Duration timeStamp = Duration.zero,
    int pointer = 0,
    PointerDeviceKind kind = PointerDeviceKind.touch,
    int device = 0,
    Offset position = Offset.zero,
    Offset localPosition,
    Offset delta = Offset.zero,
    Offset localDelta,
    int buttons = 1,
    bool obscured = false,
    dynamic pressure = 1.0,
    dynamic pressureMin = 1.0,
    dynamic pressureMax = 1.0,
    dynamic distanceMax = 0.0,
    dynamic size = 0.0,
    dynamic radiusMajor = 0.0,
    dynamic radiusMinor = 0.0,
    dynamic radiusMin = 0.0,
    dynamic radiusMax = 0.0,
    dynamic orientation = 0.0,
    dynamic tilt = 0.0,
    int platformData = 0,
    bool synthesized = false,
    Matrix4 transform,
    PointerMoveEvent original,
    int embedderId = 0,
  }) => PointerMoveEvent(
    timeStamp: timeStamp,
    pointer: pointer,
    kind: kind,
    device: device,
    position: position,
    localPosition: localPosition,
    delta: delta,
    localDelta: localDelta,
    buttons: buttons,
    obscured: obscured,
    pressure: pressure?.toDouble(),
    pressureMin: pressureMin?.toDouble(),
    pressureMax: pressureMax?.toDouble(),
    distanceMax: distanceMax?.toDouble(),
    size: size?.toDouble(),
    radiusMajor: radiusMajor?.toDouble(),
    radiusMinor: radiusMinor?.toDouble(),
    radiusMin: radiusMin?.toDouble(),
    radiusMax: radiusMax?.toDouble(),
    orientation: orientation?.toDouble(),
    tilt: tilt?.toDouble(),
    platformData: platformData,
    synthesized: synthesized,
    transform: transform,
    original: original,
    embedderId: embedderId,
  ),
  [
    "timeStamp",
    "pointer",
    "kind",
    "device",
    "position",
    "localPosition",
    "delta",
    "localDelta",
    "buttons",
    "obscured",
    "pressure",
    "pressureMin",
    "pressureMax",
    "distanceMax",
    "size",
    "radiusMajor",
    "radiusMinor",
    "radiusMin",
    "radiusMax",
    "orientation",
    "tilt",
    "platformData",
    "synthesized",
    "transform",
    "original",
    "embedderId",
  ],
);
var _pointerUpEvent = MXFunctionInvoke(
  "PointerUpEvent",
  ({
    Duration timeStamp = Duration.zero,
    int pointer = 0,
    PointerDeviceKind kind = PointerDeviceKind.touch,
    int device = 0,
    Offset position = Offset.zero,
    Offset localPosition,
    int buttons = 0,
    bool obscured = false,
    dynamic pressure = 0.0,
    dynamic pressureMin = 1.0,
    dynamic pressureMax = 1.0,
    dynamic distance = 0.0,
    dynamic distanceMax = 0.0,
    dynamic size = 0.0,
    dynamic radiusMajor = 0.0,
    dynamic radiusMinor = 0.0,
    dynamic radiusMin = 0.0,
    dynamic radiusMax = 0.0,
    dynamic orientation = 0.0,
    dynamic tilt = 0.0,
    Matrix4 transform,
    PointerUpEvent original,
    int embedderId = 0,
  }) => PointerUpEvent(
    timeStamp: timeStamp,
    pointer: pointer,
    kind: kind,
    device: device,
    position: position,
    localPosition: localPosition,
    buttons: buttons,
    obscured: obscured,
    pressure: pressure?.toDouble(),
    pressureMin: pressureMin?.toDouble(),
    pressureMax: pressureMax?.toDouble(),
    distance: distance?.toDouble(),
    distanceMax: distanceMax?.toDouble(),
    size: size?.toDouble(),
    radiusMajor: radiusMajor?.toDouble(),
    radiusMinor: radiusMinor?.toDouble(),
    radiusMin: radiusMin?.toDouble(),
    radiusMax: radiusMax?.toDouble(),
    orientation: orientation?.toDouble(),
    tilt: tilt?.toDouble(),
    transform: transform,
    original: original,
    embedderId: embedderId,
  ),
  [
    "timeStamp",
    "pointer",
    "kind",
    "device",
    "position",
    "localPosition",
    "buttons",
    "obscured",
    "pressure",
    "pressureMin",
    "pressureMax",
    "distance",
    "distanceMax",
    "size",
    "radiusMajor",
    "radiusMinor",
    "radiusMin",
    "radiusMax",
    "orientation",
    "tilt",
    "transform",
    "original",
    "embedderId",
  ],
);
var _pointerScrollEvent = MXFunctionInvoke(
  "PointerScrollEvent",
  ({
    Duration timeStamp = Duration.zero,
    PointerDeviceKind kind = PointerDeviceKind.mouse,
    int device = 0,
    Offset position = Offset.zero,
    Offset localPosition,
    Offset scrollDelta = Offset.zero,
    Matrix4 transform,
    PointerScrollEvent original,
    int embedderId = 0,
  }) => PointerScrollEvent(
    timeStamp: timeStamp,
    kind: kind,
    device: device,
    position: position,
    localPosition: localPosition,
    scrollDelta: scrollDelta,
    transform: transform,
    original: original,
    embedderId: embedderId,
  ),
  [
    "timeStamp",
    "kind",
    "device",
    "position",
    "localPosition",
    "scrollDelta",
    "transform",
    "original",
    "embedderId",
  ],
);
var _pointerCancelEvent = MXFunctionInvoke(
  "PointerCancelEvent",
  ({
    Duration timeStamp = Duration.zero,
    int pointer = 0,
    PointerDeviceKind kind = PointerDeviceKind.touch,
    int device = 0,
    Offset position = Offset.zero,
    Offset localPosition,
    int buttons = 0,
    bool obscured = false,
    dynamic pressureMin = 1.0,
    dynamic pressureMax = 1.0,
    dynamic distance = 0.0,
    dynamic distanceMax = 0.0,
    dynamic size = 0.0,
    dynamic radiusMajor = 0.0,
    dynamic radiusMinor = 0.0,
    dynamic radiusMin = 0.0,
    dynamic radiusMax = 0.0,
    dynamic orientation = 0.0,
    dynamic tilt = 0.0,
    Matrix4 transform,
    PointerCancelEvent original,
    int embedderId = 0,
  }) => PointerCancelEvent(
    timeStamp: timeStamp,
    pointer: pointer,
    kind: kind,
    device: device,
    position: position,
    localPosition: localPosition,
    buttons: buttons,
    obscured: obscured,
    pressureMin: pressureMin?.toDouble(),
    pressureMax: pressureMax?.toDouble(),
    distance: distance?.toDouble(),
    distanceMax: distanceMax?.toDouble(),
    size: size?.toDouble(),
    radiusMajor: radiusMajor?.toDouble(),
    radiusMinor: radiusMinor?.toDouble(),
    radiusMin: radiusMin?.toDouble(),
    radiusMax: radiusMax?.toDouble(),
    orientation: orientation?.toDouble(),
    tilt: tilt?.toDouble(),
    transform: transform,
    original: original,
    embedderId: embedderId,
  ),
  [
    "timeStamp",
    "pointer",
    "kind",
    "device",
    "position",
    "localPosition",
    "buttons",
    "obscured",
    "pressureMin",
    "pressureMax",
    "distance",
    "distanceMax",
    "size",
    "radiusMajor",
    "radiusMinor",
    "radiusMin",
    "radiusMax",
    "orientation",
    "tilt",
    "transform",
    "original",
    "embedderId",
  ],
);
