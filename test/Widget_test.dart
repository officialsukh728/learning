import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:learning/app/my_app.dart';

void main() {
  testWidgets("Calculator Test", (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byKey(const Key("Result")), findsOneWidget);
    expect(find.byKey(const Key("display One ")), findsOneWidget);
    expect(find.byKey(const Key("display Two")), findsOneWidget);
    expect(find.byIcon(CupertinoIcons.add), findsOneWidget);
    expect(find.byIcon(CupertinoIcons.minus), findsOneWidget);
    expect(find.byIcon(CupertinoIcons.multiply), findsOneWidget);
    expect(find.byIcon(CupertinoIcons.divide), findsOneWidget);
    await tester.enterText(find.byKey(const Key("display One ")), "20");
    await tester.enterText(find.byKey(const Key("display Two ")), "10");
    await tester.tap(find.byIcon(CupertinoIcons.add));
    await tester.pump();
    expect(find.text("30"), findsOneWidget);
    await tester.tap(find.byIcon(CupertinoIcons.minus));
    await tester.pump();
    expect(find.text("10"), findsNWidgets(2));
    await tester.tap(find.byIcon(CupertinoIcons.multiply));
    await tester.pump();
    expect(find.text("200"), findsOneWidget);
    await tester.tap(find.byIcon(CupertinoIcons.divide));

    await tester.pump();

    expect(find.text("2.0"), findsOneWidget);
  });
}
