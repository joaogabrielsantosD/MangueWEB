import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;

part 'live_state.dart';

class Packet {
  late double time;
  late double speed;
}

class LiveCubit extends Cubit<LiveState> {
  LiveCubit() : super(LiveInitial());

  void startEmittingFloats() {
    List<Packet> packets = [];
    List<Packet> newPackets = [];

    for (int i = 0; i < 400; i += 1) {
      Packet dummy = Packet();
      dummy.speed = 0;
      dummy.time = 0;

      packets.add(dummy);
      newPackets.add(dummy);
    }

    Timer.periodic(const Duration(seconds: 1), (timer) async {
      var url = Uri.parse("http://64.227.19.172:1880/data");
      var result = await http.get(url);

      if (result.statusCode == 200) {
        List<dynamic> jsonResponse = json.decode(result.body);

        List<double> speeds = jsonResponse
            .map<double>((item) => item['Roll'].toDouble())
            .toList();
        speeds = speeds.reversed.toList();

        List<double> timeJson = jsonResponse
            .map<double>((item) => item['TIMESTAMP'].toDouble() / 1000)
            .toList();
        timeJson = timeJson.reversed.toList();

        timeJson = [];

        for (double i = 0; i < speeds.length; i += 1) {
          timeJson.add(i);
        }

        newPackets = [];

        for (var i = 0; i < timeJson.length; i++) {
          Packet packet = Packet();
          packet.speed = speeds[i];
          packet.time = timeJson[i];
          newPackets.add(packet);
        }

        // var uniqueMap = {for (var obj in newPackets) obj.time: obj};
        // newPackets = uniqueMap.values.toList();
      }
    });

    Timer.periodic(const Duration(milliseconds: 50), (timer) {
      if (packets != newPackets) {
        packets = newPackets;
        packets = newPackets;
        emit(DataState(packets: packets));
      }
    });
  }
}
