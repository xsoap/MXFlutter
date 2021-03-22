// Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/image.dart';
import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/disposable_build_context.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/localizations.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:flutter/src/widgets/scroll_aware_image_provider.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerImageSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_image.funName] = _image;
  m[_image_network.funName] = _image_network;
  m[_image_file.funName] = _image_file;
  m[_image_asset.funName] = _image_asset;
  m[_image_memory.funName] = _image_memory;
  return m;
}
var _image = MXFunctionInvoke(
  "Image",
  ({
    Key key,
    ImageProvider<Object> image,
    dynamic frameBuilder,
    dynamic loadingBuilder,
    dynamic errorBuilder,
    String semanticLabel,
    bool excludeFromSemantics = false,
    dynamic width,
    dynamic height,
    Color color,
    BlendMode colorBlendMode,
    BoxFit fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) => Image(
    key: key,
    image: image,
    frameBuilder: null,
    loadingBuilder: null,
    errorBuilder: null,
    semanticLabel: semanticLabel,
    excludeFromSemantics: excludeFromSemantics,
    width: width?.toDouble(),
    height: height?.toDouble(),
    color: color,
    colorBlendMode: colorBlendMode,
    fit: fit,
    alignment: alignment,
    repeat: repeat,
    centerSlice: centerSlice,
    matchTextDirection: matchTextDirection,
    gaplessPlayback: gaplessPlayback,
    isAntiAlias: isAntiAlias,
    filterQuality: filterQuality,
  ),
  [
    "key",
    "image",
    "frameBuilder",
    "loadingBuilder",
    "errorBuilder",
    "semanticLabel",
    "excludeFromSemantics",
    "width",
    "height",
    "color",
    "colorBlendMode",
    "fit",
    "alignment",
    "repeat",
    "centerSlice",
    "matchTextDirection",
    "gaplessPlayback",
    "isAntiAlias",
    "filterQuality",
  ],
);
var _image_network = MXFunctionInvoke(
  "Image.network",
  ({
    String src,
    Key key,
    dynamic scale = 1.0,
    dynamic frameBuilder,
    dynamic loadingBuilder,
    dynamic errorBuilder,
    String semanticLabel,
    bool excludeFromSemantics = false,
    dynamic width,
    dynamic height,
    Color color,
    BlendMode colorBlendMode,
    BoxFit fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    FilterQuality filterQuality = FilterQuality.low,
    bool isAntiAlias = false,
    dynamic headers,
    int cacheWidth,
    int cacheHeight,
  }) => Image.network(
    src,
    key: key,
    scale: scale?.toDouble(),
    frameBuilder: null,
    loadingBuilder: null,
    errorBuilder: null,
    semanticLabel: semanticLabel,
    excludeFromSemantics: excludeFromSemantics,
    width: width?.toDouble(),
    height: height?.toDouble(),
    color: color,
    colorBlendMode: colorBlendMode,
    fit: fit,
    alignment: alignment,
    repeat: repeat,
    centerSlice: centerSlice,
    matchTextDirection: matchTextDirection,
    gaplessPlayback: gaplessPlayback,
    filterQuality: filterQuality,
    isAntiAlias: isAntiAlias,
    headers: toMapT<String, String>(headers),
    cacheWidth: cacheWidth,
    cacheHeight: cacheHeight,
  ),
  [
    "src",
    "key",
    "scale",
    "frameBuilder",
    "loadingBuilder",
    "errorBuilder",
    "semanticLabel",
    "excludeFromSemantics",
    "width",
    "height",
    "color",
    "colorBlendMode",
    "fit",
    "alignment",
    "repeat",
    "centerSlice",
    "matchTextDirection",
    "gaplessPlayback",
    "filterQuality",
    "isAntiAlias",
    "headers",
    "cacheWidth",
    "cacheHeight",
  ],
);
var _image_file = MXFunctionInvoke(
  "Image.file",
  ({
    File file,
    Key key,
    dynamic scale = 1.0,
    dynamic frameBuilder,
    dynamic errorBuilder,
    String semanticLabel,
    bool excludeFromSemantics = false,
    dynamic width,
    dynamic height,
    Color color,
    BlendMode colorBlendMode,
    BoxFit fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
    int cacheWidth,
    int cacheHeight,
  }) => Image.file(
    file,
    key: key,
    scale: scale?.toDouble(),
    frameBuilder: null,
    errorBuilder: null,
    semanticLabel: semanticLabel,
    excludeFromSemantics: excludeFromSemantics,
    width: width?.toDouble(),
    height: height?.toDouble(),
    color: color,
    colorBlendMode: colorBlendMode,
    fit: fit,
    alignment: alignment,
    repeat: repeat,
    centerSlice: centerSlice,
    matchTextDirection: matchTextDirection,
    gaplessPlayback: gaplessPlayback,
    isAntiAlias: isAntiAlias,
    filterQuality: filterQuality,
    cacheWidth: cacheWidth,
    cacheHeight: cacheHeight,
  ),
  [
    "file",
    "key",
    "scale",
    "frameBuilder",
    "errorBuilder",
    "semanticLabel",
    "excludeFromSemantics",
    "width",
    "height",
    "color",
    "colorBlendMode",
    "fit",
    "alignment",
    "repeat",
    "centerSlice",
    "matchTextDirection",
    "gaplessPlayback",
    "isAntiAlias",
    "filterQuality",
    "cacheWidth",
    "cacheHeight",
  ],
);
var _image_asset = MXFunctionInvoke(
  "Image.asset",
  ({
    String name,
    Key key,
    AssetBundle bundle,
    dynamic frameBuilder,
    dynamic errorBuilder,
    String semanticLabel,
    bool excludeFromSemantics = false,
    dynamic scale,
    dynamic width,
    dynamic height,
    Color color,
    BlendMode colorBlendMode,
    BoxFit fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String package,
    FilterQuality filterQuality = FilterQuality.low,
    int cacheWidth,
    int cacheHeight,
  }) => Image.asset(
    name,
    key: key,
    bundle: bundle,
    frameBuilder: null,
    errorBuilder: null,
    semanticLabel: semanticLabel,
    excludeFromSemantics: excludeFromSemantics,
    scale: scale?.toDouble(),
    width: width?.toDouble(),
    height: height?.toDouble(),
    color: color,
    colorBlendMode: colorBlendMode,
    fit: fit,
    alignment: alignment,
    repeat: repeat,
    centerSlice: centerSlice,
    matchTextDirection: matchTextDirection,
    gaplessPlayback: gaplessPlayback,
    isAntiAlias: isAntiAlias,
    package: package,
    filterQuality: filterQuality,
    cacheWidth: cacheWidth,
    cacheHeight: cacheHeight,
  ),
  [
    "name",
    "key",
    "bundle",
    "frameBuilder",
    "errorBuilder",
    "semanticLabel",
    "excludeFromSemantics",
    "scale",
    "width",
    "height",
    "color",
    "colorBlendMode",
    "fit",
    "alignment",
    "repeat",
    "centerSlice",
    "matchTextDirection",
    "gaplessPlayback",
    "isAntiAlias",
    // MX Modified begin
    "__mx_package",
    // MX Modified end
    "filterQuality",
    "cacheWidth",
    "cacheHeight",
  ],
);
var _image_memory = MXFunctionInvoke(
  "Image.memory",
  ({
    Uint8List bytes,
    Key key,
    dynamic scale = 1.0,
    dynamic frameBuilder,
    dynamic errorBuilder,
    String semanticLabel,
    bool excludeFromSemantics = false,
    dynamic width,
    dynamic height,
    Color color,
    BlendMode colorBlendMode,
    BoxFit fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
    int cacheWidth,
    int cacheHeight,
  }) => Image.memory(
    bytes,
    key: key,
    scale: scale?.toDouble(),
    frameBuilder: null,
    errorBuilder: null,
    semanticLabel: semanticLabel,
    excludeFromSemantics: excludeFromSemantics,
    width: width?.toDouble(),
    height: height?.toDouble(),
    color: color,
    colorBlendMode: colorBlendMode,
    fit: fit,
    alignment: alignment,
    repeat: repeat,
    centerSlice: centerSlice,
    matchTextDirection: matchTextDirection,
    gaplessPlayback: gaplessPlayback,
    isAntiAlias: isAntiAlias,
    filterQuality: filterQuality,
    cacheWidth: cacheWidth,
    cacheHeight: cacheHeight,
  ),
  [
    "bytes",
    "key",
    "scale",
    "frameBuilder",
    "errorBuilder",
    "semanticLabel",
    "excludeFromSemantics",
    "width",
    "height",
    "color",
    "colorBlendMode",
    "fit",
    "alignment",
    "repeat",
    "centerSlice",
    "matchTextDirection",
    "gaplessPlayback",
    "isAntiAlias",
    "filterQuality",
    "cacheWidth",
    "cacheHeight",
  ],
);