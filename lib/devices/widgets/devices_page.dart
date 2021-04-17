import 'package:flutter/material.dart';

import 'device_list_item_automation.dart';
import 'device_list_item_cover.dart';
import 'device_list_item_light.dart';
import 'device_list_item_sensor.dart';

class DevicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return SliverList(
      delegate: SliverChildListDelegate([
        SizedBox(height: 8),
        DeviceListItemSensor(deviceName: "Device", deviceState: "Up", deviceClass: "",),
        Divider(height: 1, color: Colors.grey),
        DeviceListItemLight(deviceName: "Salon", deviceState: "on",),
        Divider(height: 1, color: Colors.grey),
        DeviceListItemLight(deviceName: "Cuisine", deviceState: "off",),
        Divider(height: 1, color: Colors.grey),
        DeviceListItemLight(deviceName: "Salle à manger", deviceState: "on",),
        Divider(height: 1, color: Colors.grey),
        DeviceListItemLight(deviceName: "Entrée", deviceState: "off",),
        Divider(height: 1, color: Colors.grey),
        DeviceListItemLight(deviceName: "Bureau", deviceState: "off",),
        Divider(height: 1, color: Colors.grey),
        DeviceListItemLight(deviceName: "Chambre Max", deviceState: "off",),
        Divider(height: 1, color: Colors.grey),
        DeviceListItemLight(deviceName: "Chambre Lou", deviceState: "off",),
        Divider(height: 1, color: Colors.grey),
        DeviceListItemCover(deviceName: "Salon", deviceState: "open",),
        Divider(height: 1, color: Colors.grey),
        DeviceListItemCover(deviceName: "Cuisine", deviceState: "open",),
        Divider(height: 1, color: Colors.grey),
        DeviceListItemCover(deviceName: "Salle à manger", deviceState: "open",),
        Divider(height: 1, color: Colors.grey),
        DeviceListItemCover(deviceName: "Bureau", deviceState: "closed",),
        Divider(height: 1, color: Colors.grey),
        DeviceListItemCover(deviceName: "Chambre Max", deviceState: "closed",),
        Divider(height: 1, color: Colors.grey),
        DeviceListItemCover(deviceName: "Chambre Lou", deviceState: "closed",),
        Divider(height: 1, color: Colors.grey),
        DeviceListItemAutomation(deviceName: "Eteindre les lampes", deviceState: "closed",),
        Divider(height: 1, color: Colors.grey),
        DeviceListItemAutomation(deviceName: "Simulation de présence", deviceState: "closed",),
        Divider(height: 1, color: Colors.grey),
        DeviceListItemSensor(deviceName: "Salon", deviceState: "19 °C", deviceClass: "temperature",),
        SizedBox(height: 16),
      ]),
    );
  }
}
