import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_example/view_page.dart';

void main() {
  testWidgets('Display information',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: ViewPage(
        name: 'Rama Ramdani',
        birthplace: 'Banjar',
        birthdate: '31/10/2003',
        gender: 'Laki-laki',
        phonenumber: '081320732400',
        email: 'smith@gmail.com',
        religion: 'Muslim',
        job: 'Mahasiswa',
        address: 'Banjar Jawa Barat',
        polyclinic: 'Fisio',
      ),
    ));

    expect(find.text('Name: Rama Ramdani'), findsOneWidget);
    expect(find.text('Birth Place: Banjar'), findsOneWidget);
    expect(find.text('Birht Date: 31/10/2003'), findsOneWidget);
    expect(find.text('Gender: Laki-laki'), findsOneWidget);
    expect(find.text('Phone Number: 081320732400'), findsOneWidget);
    expect(find.text('Email: smith@gmail.com'), findsOneWidget);
    expect(find.text('Religion: Muslim'), findsOneWidget);
    expect(find.text('Job: Mahasiswa'), findsOneWidget);
    expect(find.text('Address: Banjar Jawa Barat'), findsOneWidget);
    expect(find.text('Polyclinic: Fisio'), findsOneWidget);
  });

  testWidgets('Display information',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: ViewPage(
        name: 'Rama Ramdani',
        birthplace: 'Banjar',
        birthdate: '31/10/2003',
        gender: 'Laki-laki',
        phonenumber: '081320732400',
        email: 'smith@gmail.com',
        religion: 'Muslim',
        job: 'Mahasiswa',
        address: 'Banjar Jawa Barat',
        polyclinic: 'Fisio',
      ),
    ));

    expect(find.text('Name: Tono Wijayakusuma'), findsNothing);
    expect(find.text('Birth Place: Garut'), findsNothing);
    expect(find.text('Birht Date: 29/02/1985'), findsNothing);
  });

  testWidgets('Display information',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: ViewPage(
        name: '',
        birthplace: '',
        birthdate: '',
        gender: '',
        phonenumber: '',
        email: '',
        religion: '',
        job: '',
        address: '',
        polyclinic: '',
      ),
    ));

    expect(find.text('Name: '), findsOneWidget);
    expect(find.text('Birth Place: '), findsOneWidget);
    expect(find.text('Birht Date: '), findsOneWidget);
    expect(find.text('Gender: '), findsOneWidget);
    expect(find.text('Phone Number: '), findsOneWidget);
    expect(find.text('Email: '), findsOneWidget);
    expect(find.text('Religion: '), findsOneWidget);
    expect(find.text('Job: '), findsOneWidget);
    expect(find.text('Address: '), findsOneWidget);
    expect(find.text('Polyclinic: '), findsOneWidget);
  });
}