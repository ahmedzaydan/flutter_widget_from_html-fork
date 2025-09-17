import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import '../../core/test/_.dart' as helper;

const kDataUri = helper.kDataUri;

const kGoldenFilePrefix = helper.kGoldenFilePrefix;

final hwKey = helper.hwKey;

const buildCurrentState = helper.buildCurrentState;

const explainWithoutPumping = helper.explainWithoutPumping;

String? _explainer(helper.Explainer parent, Widget widget) {
  return null;
}

Future<String> explain(
  WidgetTester tester,
  String? html, {
  Widget? hw,
  GlobalKey? key,
  bool useExplainer = true,
}) {
  key ??= helper.hwKey;
  return helper.explain(
    tester,
    null,
    explainer: _explainer,
    hw: hw ?? HtmlWidget(html!, key: key),
    key: key,
    useExplainer: useExplainer,
  );
}

Future<int> tapText(WidgetTester tester, String data) =>
    helper.tapText(tester, data);
