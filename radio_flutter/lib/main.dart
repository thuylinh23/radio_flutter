import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'info.dart';

void main(List<String> args) {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => GioiTinh()),
      ChangeNotifierProvider(create: (_) => BangCap())
    ],
    child: MaterialApp(home: MyApp()),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RADIO DEMO"),
      ),
      body: Consumer2<GioiTinh, BangCap>(
        builder: (context, infoGioiTinh, infoBangCap, child) {
          return Column(
            children: [
              Text("Gioi Tinh"),
              RadioListTile<gioi_tinh>(
                  title: Text("Nam"),
                  value: gioi_tinh.nam,
                  groupValue: infoGioiTinh.gioiTinh,
                  onChanged: (value) {
                    infoGioiTinh.gioiTinh = value;
                  }),
              RadioListTile<gioi_tinh>(
                  title: Text("Nu"),
                  value: gioi_tinh.nu,
                  groupValue: infoGioiTinh.gioiTinh,
                  onChanged: (value) {
                    infoGioiTinh.gioiTinh = value;
                  }),
              Text("Bang Cap"),
              RadioListTile<bang_cap>(
                  title: Text("Cao Dang"),
                  value: bang_cap.CaoDang,
                  groupValue: infoBangCap.bangCap,
                  onChanged: (value) {
                    infoBangCap.bangCap = value;
                  }),
              RadioListTile<bang_cap>(
                  title: Text("Dai Hoc"),
                  value: bang_cap.DaiHoc,
                  groupValue: infoBangCap.bangCap,
                  onChanged: (value) {
                    infoBangCap.bangCap = value;
                  }),
              RadioListTile<bang_cap>(
                  title: Text("Thac Si"),
                  value: bang_cap.ThacSi,
                  groupValue: infoBangCap.bangCap,
                  onChanged: (value) {
                    infoBangCap.bangCap = value;
                  }),
              RadioListTile<bang_cap>(
                  title: Text("Tien Si"),
                  value: bang_cap.TienSi,
                  groupValue: infoBangCap.bangCap,
                  onChanged: (value) {
                    infoBangCap.bangCap = value;
                  }),
              Divider(
                height: 100,
              ),
              Center(
                child: Text(
                  'Thong tin ca nhan : ${infoGioiTinh.gioiTinh}, ${ infoBangCap.bangCap}', style: TextStyle(fontSize: 20),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
