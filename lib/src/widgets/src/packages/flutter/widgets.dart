// Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import './src/widgets/will_pop_scope.dart';
import './src/widgets/widget_span.dart';
import './src/widgets/widget_inspector.dart';
import './src/widgets/visibility.dart';
import './src/widgets/viewport.dart';
import './src/widgets/value_listenable_builder.dart';
import './src/widgets/unique_widget.dart';
import './src/widgets/tween_animation_builder.dart';
import './src/widgets/transitions.dart';
import './src/widgets/title.dart';
import './src/widgets/ticker_provider.dart';
import './src/widgets/texture.dart';
import './src/widgets/text_selection.dart';
import './src/widgets/text.dart';
import './src/widgets/table.dart';
import './src/widgets/status_transitions.dart';
import './src/widgets/spacer.dart';
import './src/widgets/sliver_prototype_extent_list.dart';
import './src/widgets/sliver_persistent_header.dart';
import './src/widgets/sliver_layout_builder.dart';
import './src/widgets/sliver_fill.dart';
import './src/widgets/sliver.dart';
import './src/widgets/size_changed_layout_notifier.dart';
import './src/widgets/single_child_scroll_view.dart';
import './src/widgets/shortcuts.dart';
import './src/widgets/semantics_debugger.dart';
import './src/widgets/scrollbar.dart';
import './src/widgets/scrollable.dart';
import './src/widgets/scroll_view.dart';
import './src/widgets/scroll_simulation.dart';
import './src/widgets/scroll_position_with_single_context.dart';
import './src/widgets/scroll_position.dart';
import './src/widgets/scroll_physics.dart';
import './src/widgets/scroll_notification.dart';
import './src/widgets/scroll_metrics.dart';
import './src/widgets/scroll_controller.dart';
import './src/widgets/scroll_context.dart';
import './src/widgets/scroll_configuration.dart';
import './src/widgets/scroll_aware_image_provider.dart';
import './src/widgets/scroll_activity.dart';
import './src/widgets/safe_area.dart';
import './src/widgets/routes.dart';
import './src/widgets/router.dart';
import './src/widgets/restoration_properties.dart';
import './src/widgets/restoration.dart';
import './src/widgets/raw_keyboard_listener.dart';
import './src/widgets/primary_scroll_controller.dart';
import './src/widgets/preferred_size.dart';
import './src/widgets/platform_view.dart';
import './src/widgets/placeholder.dart';
import './src/widgets/performance_overlay.dart';
import './src/widgets/pages.dart';
import './src/widgets/page_view.dart';
import './src/widgets/page_storage.dart';
import './src/widgets/overscroll_indicator.dart';
import './src/widgets/overlay.dart';
import './src/widgets/overflow_bar.dart';
import './src/widgets/orientation_builder.dart';
import './src/widgets/notification_listener.dart';
import './src/widgets/nested_scroll_view.dart';
import './src/widgets/navigator.dart';
import './src/widgets/navigation_toolbar.dart';
import './src/widgets/modal_barrier.dart';
import './src/widgets/media_query.dart';
import './src/widgets/localizations.dart';
import './src/widgets/list_wheel_scroll_view.dart';
import './src/widgets/layout_builder.dart';
import './src/widgets/interactive_viewer.dart';
import './src/widgets/inherited_theme.dart';
import './src/widgets/inherited_notifier.dart';
import './src/widgets/inherited_model.dart';
import './src/widgets/implicit_animations.dart';
import './src/widgets/image_icon.dart';
import './src/widgets/image_filter.dart';
import './src/widgets/image.dart';
import './src/widgets/icon_theme_data.dart';
import './src/widgets/icon_theme.dart';
import './src/widgets/icon_data.dart';
import './src/widgets/icon.dart';
import './src/widgets/heroes.dart';
import './src/widgets/grid_paper.dart';
import './src/widgets/gesture_detector.dart';
import './src/widgets/framework.dart';
import './src/widgets/form.dart';
import './src/widgets/focus_traversal.dart';
import './src/widgets/focus_scope.dart';
import './src/widgets/focus_manager.dart';
import './src/widgets/fade_in_image.dart';
import './src/widgets/editable_text.dart';
import './src/widgets/dual_transition_builder.dart';
import './src/widgets/draggable_scrollable_sheet.dart';
import './src/widgets/drag_target.dart';
import './src/widgets/disposable_build_context.dart';
import './src/widgets/dismissible.dart';
import './src/widgets/container.dart';
import './src/widgets/color_filter.dart';
import './src/widgets/bottom_navigation_bar_item.dart';
import './src/widgets/binding.dart';
import './src/widgets/basic.dart';
import './src/widgets/banner.dart';
import './src/widgets/automatic_keep_alive.dart';
import './src/widgets/autofill.dart';
import './src/widgets/async.dart';
import './src/widgets/app.dart';
import './src/widgets/annotated_region.dart';
import './src/widgets/animated_switcher.dart';
import './src/widgets/animated_size.dart';
import './src/widgets/animated_list.dart';
import './src/widgets/animated_cross_fade.dart';
import './src/widgets/actions.dart';
import '../vector_math/vector_math_64.dart';

Map<String, MXFunctionInvoke> registerWidgetsLibrarySeries() {
  Map<String, MXFunctionInvoke> m = {};
  m.addAll(registerWillPopScopeSeries());
  m.addAll(registerWidgetSpanSeries());
  m.addAll(registerWidgetInspectorSeries());
  m.addAll(registerVisibilitySeries());
  m.addAll(registerViewportSeries());
  m.addAll(registerValueListenableBuilderSeries());
  m.addAll(registerUniqueWidgetSeries());
  m.addAll(registerTweenAnimationBuilderSeries());
  m.addAll(registerTransitionsSeries());
  m.addAll(registerTitleSeries());
  m.addAll(registerTickerProviderSeries());
  m.addAll(registerTextureSeries());
  m.addAll(registerTextSelectionSeries());
  m.addAll(registerTextSeries());
  m.addAll(registerTableSeries());
  m.addAll(registerStatusTransitionsSeries());
  m.addAll(registerSpacerSeries());
  m.addAll(registerSliverPrototypeExtentListSeries());
  m.addAll(registerSliverPersistentHeaderSeries());
  m.addAll(registerSliverLayoutBuilderSeries());
  m.addAll(registerSliverFillSeries());
  m.addAll(registerSliverSeries());
  m.addAll(registerSizeChangedLayoutNotifierSeries());
  m.addAll(registerSingleChildScrollViewSeries());
  m.addAll(registerShortcutsSeries());
  m.addAll(registerSemanticsDebuggerSeries());
  m.addAll(registerScrollbarSeries());
  m.addAll(registerScrollableSeries());
  m.addAll(registerScrollViewSeries());
  m.addAll(registerScrollSimulationSeries());
  m.addAll(registerScrollPositionWithSingleContextSeries());
  m.addAll(registerScrollPositionSeries());
  m.addAll(registerScrollPhysicsSeries());
  m.addAll(registerScrollNotificationSeries());
  m.addAll(registerScrollMetricsSeries());
  m.addAll(registerScrollControllerSeries());
  m.addAll(registerScrollContextSeries());
  m.addAll(registerScrollConfigurationSeries());
  m.addAll(registerScrollAwareImageProviderSeries());
  m.addAll(registerScrollActivitySeries());
  m.addAll(registerSafeAreaSeries());
  m.addAll(registerRoutesSeries());
  m.addAll(registerRouterSeries());
  m.addAll(registerRestorationPropertiesSeries());
  m.addAll(registerRestorationSeries());
  m.addAll(registerRawKeyboardListenerSeries());
  m.addAll(registerPrimaryScrollControllerSeries());
  m.addAll(registerPreferredSizeSeries());
  m.addAll(registerPlatformViewSeries());
  m.addAll(registerPlaceholderSeries());
  m.addAll(registerPerformanceOverlaySeries());
  m.addAll(registerPagesSeries());
  m.addAll(registerPageViewSeries());
  m.addAll(registerPageStorageSeries());
  m.addAll(registerOverscrollIndicatorSeries());
  m.addAll(registerOverlaySeries());
  m.addAll(registerOverflowBarSeries());
  m.addAll(registerOrientationBuilderSeries());
  m.addAll(registerNotificationListenerSeries());
  m.addAll(registerNestedScrollViewSeries());
  m.addAll(registerNavigatorSeries());
  m.addAll(registerNavigationToolbarSeries());
  m.addAll(registerModalBarrierSeries());
  m.addAll(registerMediaQuerySeries());
  m.addAll(registerLocalizationsSeries());
  m.addAll(registerListWheelScrollViewSeries());
  m.addAll(registerLayoutBuilderSeries());
  m.addAll(registerInteractiveViewerSeries());
  m.addAll(registerInheritedThemeSeries());
  m.addAll(registerInheritedNotifierSeries());
  m.addAll(registerInheritedModelSeries());
  m.addAll(registerImplicitAnimationsSeries());
  m.addAll(registerImageIconSeries());
  m.addAll(registerImageFilterSeries());
  m.addAll(registerImageSeries());
  m.addAll(registerIconThemeDataSeries());
  m.addAll(registerIconThemeSeries());
  m.addAll(registerIconDataSeries());
  m.addAll(registerIconSeries());
  m.addAll(registerHeroesSeries());
  m.addAll(registerGridPaperSeries());
  m.addAll(registerGestureDetectorSeries());
  m.addAll(registerFrameworkSeries());
  m.addAll(registerFormSeries());
  m.addAll(registerFocusTraversalSeries());
  m.addAll(registerFocusScopeSeries());
  m.addAll(registerFocusManagerSeries());
  m.addAll(registerFadeInImageSeries());
  m.addAll(registerEditableTextSeries());
  m.addAll(registerDualTransitionBuilderSeries());
  m.addAll(registerDraggableScrollableSheetSeries());
  m.addAll(registerDragTargetSeries());
  m.addAll(registerDisposableBuildContextSeries());
  m.addAll(registerDismissibleSeries());
  m.addAll(registerContainerSeries());
  m.addAll(registerColorFilterSeries());
  m.addAll(registerBottomNavigationBarItemSeries());
  m.addAll(registerBindingSeries());
  m.addAll(registerBasicSeries());
  m.addAll(registerBannerSeries());
  m.addAll(registerAutomaticKeepAliveSeries());
  m.addAll(registerAutofillSeries());
  m.addAll(registerAsyncSeries());
  m.addAll(registerAppSeries());
  m.addAll(registerAnnotatedRegionSeries());
  m.addAll(registerAnimatedSwitcherSeries());
  m.addAll(registerAnimatedSizeSeries());
  m.addAll(registerAnimatedListSeries());
  m.addAll(registerAnimatedCrossFadeSeries());
  m.addAll(registerActionsSeries());
  m.addAll(registerVectorMath64Series());
  return m;
}
