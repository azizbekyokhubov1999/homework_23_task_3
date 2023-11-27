import 'dart:convert';

List<Product> productListFromData(String data) => List<Product>.from(jsonDecode(data).map((e) => Product.fromJson(e)));
class Product{
  late String productId;
  late String productName;
  late num price;
  late bool inStock;
  late Availability availability;
  late Details details;

  Product.fromJson(Map<String, dynamic>json){
    productId = json["productId"];
    productName = json["productName"];
    price = json["price"];
    inStock = json["inStock"];
    availability =  Availability.fromJson(json["availability"]);
    details = Details.fromJson(json["details"]);

  }
}
class Availability{
  late bool online;
  late Offline offline;

  Availability.fromJson(Map<String, dynamic>json){
    online = json["online"];
    offline = Offline.fromJson(json["offline"]);
  }


}
class Offline{
  late num store1;
  late num store2;
  late num store3;

  Offline.fromJson(Map<String, dynamic>json){
    store1 = json["store1"];
    store2 = json["store2"];
    store3 = json["store3"];
  }

}
class Details{
  late String brand;
  late String model;
  late Specs specs;

  Details.fromJson(Map<String, dynamic>json){
    brand = json["brand"];
    model = json["model"];
    specs = Specs.fromJson(json["specs"]);

  }
}
class Specs{
  late Screen screen;
  late Storage storage;
  late Ram ram;
  late Camera? camera;
  late Graphics? graphics;
  late Battery battery;
  late OperatingSystem operatingSystem;
  late Connectivity connectivity;
  late Warranty warranty;

  Specs.fromJson(Map<String, dynamic>json){
    screen = Screen.fromJson(json["screen"]);
    storage = Storage.fromJson(json["storage"]);
    ram = Ram.fromJson(json["ram"]);
    camera = (json["camera"] != null ? Camera.fromJson(json["camera"]) : null);
    graphics = (json["graphics"] != null ? Graphics.fromJson(json["graphics"]) : null) ;
    operatingSystem = OperatingSystem.fromJson(json["operatingSystem"]);
    connectivity = Connectivity.fromJson(json["connectivity"]);
    warranty = Warranty.fromJson(json["warranty"]);

  }

}
class Screen{
  late String type;
  late num size;
  late String resolution;

  Screen.fromJson(Map<String, dynamic>json){
    type = json["type"];
    size = json["size"];
    resolution = json["resolution"];
  }
}
class Storage{
  late String type;
  late String capacity;
  Storage.fromJson(Map<String, dynamic>json){
    type = json["type"];
    capacity = json["capacity"];
  }
}
class Ram{
  late String type;
  late String capacity;
  late String speed;

  Ram.fromJson(Map<String, dynamic>json){
    type = json["type"];
    capacity = json["capacity"];
    speed = json["speed"];
  }
}
class Camera{
  late Rear rear;
  late Front front;

  Camera.fromJson(Map<String, dynamic>json){
    rear = Rear.fromJson(json["rear"]);
    front = Front.fromJson(json["front"]);

  }
}
class Graphics{
  late String type;

  Graphics.fromJson(Map<String, dynamic>json){
    type = json["type"];
  }


}
class Rear{
  late String resolution;
  late String aperture;

  Rear.fromJson(Map<String,dynamic>json){
    resolution= json["resolution"];
    aperture= json["aperture"];
  }
}
class Front{
  late String resolution;
  late String aperture;

  Front.fromJson(Map<String, dynamic>json){
    resolution = json["resolution"];
    aperture = json["aperture"];
  }
}
class Battery{
  late String capacity;
  late String type;
  late Charging charging;
  Battery.fromJson(Map<String, dynamic>json){
    capacity = json["capacity"];
    type = json["type"];
    charging = Charging.fromJson(json["charging"]);
  }
}
class Charging{
  late String type;
  late num wattage;

  Charging.fromJson(Map<String, dynamic>json){
    type= json["type"];
    wattage = json["wattage"];
  }
}
class OperatingSystem{
  late String name;
  late String version;
  late String? customSkin;

  OperatingSystem.fromJson(Map<String, dynamic> json){
    name = json["name"];
    version = json["version"];
    customSkin = json["customSkin"];
  }
}
class Connectivity{
  late String wifi;
  late String bluetooth;
  late bool? nfc;
  late UsbPorts? usbPorts;
  late num? thunderboltPorts;
  late bool? hdmi;

  Connectivity.fromJson(Map<String, dynamic>json){
    wifi =json["wifi"];
    bluetooth =json["bluetooth"];
    nfc =json["nfc"];
  }

}

class UsbPorts{
  late num typeA;
  late num typeC;
}
class Warranty{
  late num months;
  late String type;

  Warranty.fromJson(Map<String, dynamic>json){
    months = json["months"];
    type = json["type"];
  }

}