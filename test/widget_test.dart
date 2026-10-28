import 'package:flutter_test/flutter_test.dart';
import 'package:montejo_edgeinsets_activity4/main.dart';

void main() {
  testWidgets('Shows the title and four EdgeInsets examples', (tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Montejo Activity 4'), findsOneWidget);
    expect(find.text('EdgeInsets.all(30)'), findsOneWidget);
    expect(
      find.text('EdgeInsets.symmetric(horizontal: 40, vertical: 10)'),
      findsOneWidget,
    );
    expect(
      find.text('EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20)'),
      findsOneWidget,
    );
    expect(find.text('EdgeInsets.fromLTRB(10, 20, 30, 40)'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
