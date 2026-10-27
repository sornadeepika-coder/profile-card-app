import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile_card_app/main.dart';

void main() {
  testWidgets('Profile Card App renders all required information correctly', (WidgetTester tester) async {
    // Build the ProfileCardApp
    await tester.pumpWidget(const ProfileCardApp());

    // Verify avatar with initials 'SD' is displayed
    expect(find.text('SD'), findsOneWidget);

    // Verify profile name is displayed
    expect(find.text('Sorna Deepika'), findsOneWidget);

    // Verify role is displayed
    expect(find.text('Computer Science Engineering Student'), findsOneWidget);

    // Verify contact details are displayed
    expect(find.text('deepika@example.com'), findsOneWidget);
    expect(find.text('+91 98765 43210'), findsOneWidget);
    expect(find.text('Tamil Nadu, India'), findsOneWidget);

    // Verify Material Icons are rendered
    expect(find.byIcon(Icons.email_outlined), findsOneWidget);
    expect(find.byIcon(Icons.phone_outlined), findsOneWidget);
    expect(find.byIcon(Icons.location_on_outlined), findsOneWidget);

    // Verify key layout widgets are present
    expect(find.byType(Column), findsWidgets);
    expect(find.byType(Row), findsWidgets);
    expect(find.byType(Container), findsWidgets);
    expect(find.byType(Text), findsWidgets);
    expect(find.byType(SingleChildScrollView), findsOneWidget);
  });
}
