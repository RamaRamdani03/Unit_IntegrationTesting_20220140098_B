import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:form_example/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Form Submission Test', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();

    const name = 'Rama Ramdani';
    const birthplace = 'Banjar';
    const birthdate = '31/10/2003';
    const gender = 'Laki-laki';
    const phonenumber = '081289490420';
    const email = 'smith@gmail.com';
    const religion = 'Muslim';
    const job = 'Mahasiswa';
    const address = 'Banjar';
    const polyclinic = 'Fisioterapi';

    await tester.enterText(find.byType(TextField).at(0), name);
    await Future.delayed(const Duration(seconds: 1));
    await tester.enterText(find.byType(TextField).at(1), birthplace);
    await Future.delayed(const Duration(seconds: 1));
    await tester.enterText(find.byType(TextField).at(2), birthdate);
    await Future.delayed(const Duration(seconds: 1));
    await tester.enterText(find.byType(TextField).at(3), gender);
    await Future.delayed(const Duration(seconds: 1));
    await tester.enterText(find.byType(TextField).at(4), phonenumber);
    await Future.delayed(const Duration(seconds: 1));
    await tester.enterText(find.byType(TextField).at(5), email);
    await Future.delayed(const Duration(seconds: 1));
    await tester.enterText(find.byType(TextField).at(6), religion);
    await Future.delayed(const Duration(seconds: 1));
    await tester.enterText(find.byType(TextField).at(7), job);
    await Future.delayed(const Duration(seconds: 1));
    await tester.enterText(find.byType(TextField).at(8), address);
    await Future.delayed(const Duration(seconds: 1));
    await tester.enterText(find.byType(TextField).at(9), polyclinic);
    await Future.delayed(const Duration(seconds: 1));

    await tester.tap(find.byType(ElevatedButton));
    await Future.delayed(const Duration(seconds: 1));
    await tester.pumpAndSettle();
  });
}