import 'dart:convert';

List<OrderModel> orderModelFromJson(String str) => List<OrderModel>.from(json.decode(str).map((x) => OrderModel.fromJson(x)));

String orderModelToJson(List<OrderModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OrderModel {
  OrderModel({
    required this.discounts,
    required this.rewardItem,
    required this.table,
    required this.id,
    required this.customer,
    required this.orderItems,
    required this.tips,
    required this.orderStatus,
    required this.orderType,
    required this.discardReason,
    required this.numberOfGuests,
    required this.startTime,
    required this.endTime,
    required this.startDate,
    required this.endDate,
    required this.orderTime,
    required this.orderDate,
    required this.totalAmount,
    required this.subTotal,
    required this.totalTips,
    required this.totalPaymentAmount,
    required this.discountType,
    required this.discountAmount,
    required this.estimatedTime,
    required this.tax,
    required this.payment,
    required this.sl,
    required this.dueAmount,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
    required this.appliedPromo,
    required this.restId,
    required this.flashDiscount,
    required this.refund,
    required this.orderSource,
    required this.createdBy,
    required this.updatedBy,
    required this.itemWisePayment,
  });

  List<String> appliedPromo;
  List<TableModel> table;
  String id;
  CustomerModel customer;
  CustomerModel customerForCallerId = CustomerModel.buildEmpty();
  List<OrderItem> orderItems;
  List<OrderItem> barItems = [];
  List<Tip> tips;
  String orderStatus;
  String orderType;
  String discardReason;
  DateTime orderTime;
  DateTime orderDate;
  num numberOfGuests;
  DateTime startTime;
  DateTime endTime;
  DateTime startDate;
  DateTime endDate;
  num totalAmount;
  num subTotal;
  num totalTips;
  num totalPaymentAmount;
  String discountType;
  double subDiscount = 0.0;
  num flashDiscount;
  num percentDiscount = 0.0;
  Discounts discounts;
  num discountAmount;
  int estimatedTime;
  num tax;
  List<Payment> payment;
  num dueAmount = 0.0;
  int sl;
  DateTime createdAt;
  DateTime updatedAt;
  int v;
  int orderItemCount = 0;
  List<BonusItem> rewardItem;
  String restId = "";
  num barSubtotal = 0.00;
  num kitchenSubtotal = 0.00;
  Refund refund;
  String orderSource;
  String createdBy;
  String updatedBy;
  Map<String, dynamic> itemWisePayment;
  //List<BonusItem> rewardItem = [];

  double calculateSubTotal() {
    double subp = 0.0;

    for (var element in orderItems) {
      subp += element.food.first.price;
    }
    return subp;
  }

  void clearAllDiscount() {
    rewardItem = [];
    subDiscount = 0.0;
    discountAmount = 0.0;
    for (var element in orderItems) {
      element.food.first.clearDiscount();
    }
  }

  void calculateTotalPayment() {
    for (var element in payment) {
      totalPaymentAmount += element.paymentAmount;
    }
  }

  factory OrderModel.buildEmpty() => OrderModel(
      orderSource: "",
      refund: Refund.buildEmpty(),
      flashDiscount: 0.00,
      discounts: Discounts.buildEmpty(),
      restId: "",
      appliedPromo: [],
      rewardItem: [],
      sl: 0,
      table: [],
      customer: CustomerModel.buildEmpty(),
      id: '',
      orderItems: [],
      orderStatus: '',
      orderType: '',
      discardReason: '',
      orderTime: DateTime.now(),
      orderDate: DateTime.now(),
      startTime: DateTime.now(),
      endTime: DateTime.now(),
      startDate: DateTime.now(),
      endDate: DateTime.now(),
      tips: [],
      estimatedTime: 0,
      numberOfGuests: 0,
      discountType: '',
      discountAmount: 0,
      payment: [],
      dueAmount: 0,
      tax: 0,
      totalAmount: 0,
      subTotal: 0,
      totalTips: 0,
      totalPaymentAmount: 0,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      v: 0,
      createdBy: "",
      updatedBy: "",
      itemWisePayment: {});

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
    orderSource: json["orderSource"],
    refund: Refund.fromJson(json["refund"]),
    flashDiscount: json["flashDiscount"],
    discounts: Discounts.fromJson(json["discounts"]),
    restId: json["restId"],
    appliedPromo: List<String>.from(json["appliedPromo"].map((x) => x)),
    rewardItem: List<BonusItem>.from(json["rewardItem"].map((x) => BonusItem.fromJson(x)) ?? []),
    table: List<TableModel>.from(json["table"].map((x) => TableModel.fromJson(x))),
    id: json["_id"],
    customer: json["customer"].isNotEmpty ? CustomerModel.fromJson(json["customer"]) : CustomerModel.buildEmpty(),
    orderItems: List<OrderItem>.from(json["orderItems"].map((x) => OrderItem.fromJson(x))),
    tips: List<Tip>.from(json["tips"].map((x) => Tip.fromJson(x))),
    orderStatus: json["orderStatus"],
    numberOfGuests: json["numberOfGuests"] ?? 0,
    startTime: DateTime.parse(json["startTime"]),
    endTime: DateTime.parse(json["endTime"]),
    startDate: DateTime.parse(json["startDate"]),
    endDate: DateTime.parse(json["endDate"]),
    orderType: json["orderType"],
    discardReason: json["discardReason"] ?? '',
    orderTime: DateTime.parse(json["orderTime"]),
    orderDate: DateTime.parse(json["orderDate"]),
    totalAmount: json["totalAmount"],
    subTotal: json["subTotal"],
    discountType: json["discountType"],
    discountAmount: json["discountAmount"],
    estimatedTime: json["estimatedTime"],
    tax: json["tax"],
    totalTips: json["totalTips"],
    totalPaymentAmount: json["totalPaymentAmount"],
    payment: List<Payment>.from(json["payment"].map((x) => Payment.fromJson(x))),
    dueAmount: json["dueAmount"],
    sl: json["sl"] ?? 0,
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
    createdBy: json["createdBy"],
    updatedBy: json["updatedBy"],
    itemWisePayment: json['itemWisePayment'],
  );

  Map<String, dynamic> toJson() => {
    "orderSource": orderSource,
    "refund": refund.toJson(),
    "flashDiscount": flashDiscount,
    "discounts": discounts.toJson(),
    "restId": restId,
    "appliedPromo": List<dynamic>.from(appliedPromo.map((x) => x)),
    "sl": sl,
    "rewardItem": List<dynamic>.from(rewardItem.map((x) => x)),
    "table": List<dynamic>.from(table.map((x) => x.id)),
    // "_id": id,
    "customer": customer.id,
    "orderItems": List<dynamic>.from(orderItems.map((x) => x.toJson())),
    "tips": List<dynamic>.from(tips.map((x) => x.toJson())),
    "orderStatus": orderStatus,
    "orderType": orderType,
    "startTime": startTime.toIso8601String(),
    "endTime": endTime.toIso8601String(),
    "startDate": startDate.toIso8601String(),
    "endDate": endDate.toIso8601String(),
    "discardReason": discardReason,
    "orderTime": orderTime.toIso8601String(),
    "orderDate": orderDate.toIso8601String(),
    "totalAmount": totalAmount,
    "subTotal": subTotal,
    "numberOfGuests": numberOfGuests,
    "totalTips": totalTips,
    "totalPaymentAmount": totalPaymentAmount,
    "discountType": discountType,
    "discountAmount": discountAmount,
    "estimatedTime": estimatedTime,
    "tax": tax,
    "payment": List<dynamic>.from(payment.map((x) => x.toJson())),
    "dueAmount": dueAmount,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "__v": v,
    "createdBy": createdBy,
    "updatedBy": updatedBy,
    'itemWisePayment': itemWisePayment,
  };
}

class BonusItem {
  String id;
  String name;
  String description;
  num rate = 0;
  num quantity = 0;
  num price = 0;
  BonusItem({
    required this.id,
    required this.name,
    required this.description,
    // required this.rate,
    // required this.quantity,
    // required this.price,
  });

  factory BonusItem.fromJson(Map<String, dynamic> json) => BonusItem(
    id: json["_id"] ?? '',
    name: json["name"] ?? '',
    description: json["desc"] ?? '',
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "desc": description,
  };
}

class OrderItem {
  OrderItem({
    required this.foodId,
    required this.id,
    required this.food,
  });

  List<String> foodId;
  String id;
  List<Food> food;

  factory OrderItem.buildEmpty() => OrderItem(
    id: '',
    foodId: [],
    food: [],
  );
  factory OrderItem.fromJson(Map<String, dynamic> json) => OrderItem(
    foodId: List<String>.from(json["foodId"].map((x) => x)),
    id: json["_id"],
    food: List<Food>.from(json["food"].map((x) => Food.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "foodId": List<dynamic>.from(foodId.map((x) => x)),
    // "_id": id,
    "food": List<dynamic>.from(food.map((x) => x.toJson())),
  };
}

class Food {
  Food({required this.id, required this.name, required this.portions, required this.options, required this.extras, required this.quantity, required this.price, required this.status, required this.comment, required this.categories, required this.bonusItem});

  String id;
  String name;
  int uniqueId = 0;
  List<OrderPortion> portions;
  List<CategoryModel> categories;
  List<OrderOption> options;
  List<OrderExtra> extras;
  int quantity;
  int newQuantity = 1;
  num price;
  num newPrice = 0;
  bool status;
  String comment;
  bool promoApplied = false;
  double discount = 0.0;
  bool exclusive = false;
  List<BonusItem> bonusItem;
  //BonusItem bonusItem = BonusItem(id: '', name: '', description: '');

  double calculateBasePrice() {
    double foodPrice = 0.0;
    for (var element in portions) {
      foodPrice += element.portionPrice;
    }
    for (var elOp in options) {
      for (var elVar in elOp.optionVariant) {
        foodPrice += elVar.variantPrice;
      }
    }
    for (var element in extras) {
      foodPrice += (element.extraPrice * element.extraQuantity);
    }
    return foodPrice * quantity;
  }

  // ****************************** NewOrderQuantity r Price er Khela **********************************
  double calculateBasePriceForNewOrder() {
    double foodPrice = 0.0;
    for (var element in portions) {
      foodPrice += element.portionPrice;
    }
    for (var elOp in options) {
      for (var elVar in elOp.optionVariant) {
        foodPrice += elVar.variantPrice;
      }
    }
    for (var element in extras) {
      foodPrice += (element.extraPrice * element.extraQuantity);
    }
    return foodPrice * newQuantity;
  }

  // ****************************** NewOrderQuantity r Price er Khela **********************************

  num calculateFirstPrice() {
    num foodPrice = 0.0;
    num portionPrice = 0.0;
    num extrasPrice = 0.0;
    for (var element in portions) {
      foodPrice = element.portionPrice;
    }
    for (var elOp in options) {
      for (var elVar in elOp.optionVariant) {
        portionPrice = elVar.variantPrice;
      }
    }
    for (var element in extras) {
      extrasPrice = (element.extraPrice * element.extraQuantity);
    }

    return foodPrice + portionPrice + extrasPrice;
  }

  void clearDiscount() {
    promoApplied = false;
    discount = 0.0;
    exclusive = false;
  }

  factory Food.buildEmpty() => Food(id: '', name: '', portions: [], options: [], extras: [], status: false, quantity: 0, price: 0, comment: '', categories: [], bonusItem: []);

  factory Food.fromJson(Map<String, dynamic> json) => Food(
    bonusItem: List<BonusItem>.from(json["bonusItem"].map((x) => BonusItem.fromJson(x)) ?? []),
    // categories: json["categories"] ?? [],
    categories: List<CategoryModel>.from(json["categories"].map((x) => CategoryModel.fromJson(x))),
    id: json["_id"],
    name: json["name"],
    portions: List<OrderPortion>.from(json["portions"].map((x) => OrderPortion.fromJson(x))),
    options: List<OrderOption>.from(json["options"].map((x) => OrderOption.fromJson(x))),
    extras: List<OrderExtra>.from(json["extras"].map((x) => OrderExtra.fromJson(x))),
    quantity: json["quantity"],
    price: json["price"],
    status: json["status"],
    comment: json["comment"],
  );

  Map<String, dynamic> toJson() => {
    // "_id": id,
    "name": name,
    "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
    "portions": List<dynamic>.from(portions.map((x) => x.toJson())),
    "bonusItem": List<dynamic>.from(bonusItem.map((x) => x.toJson())),
    "options": List<dynamic>.from(options.map((x) => x.toJson())),
    "extras": List<dynamic>.from(extras.map((x) => x.toJson())),
    "quantity": quantity,
    "price": price,
    "status": status,
    "comment": comment,
  };
}

class OrderExtra {
  OrderExtra({
    required this.id,
    required this.extraName,
    required this.extraPrice,
    required this.extraQuantity,
  });

  String id;
  String extraName;
  num extraPrice;
  int extraQuantity;

  // factory OrderExtra.buildEmpty() => OrderExtra(id: '', extraName: '', extraPrice: 0, extraQuantity: 0);
  factory OrderExtra.fromJson(Map<String, dynamic> json) => OrderExtra(
    id: json["_id"],
    extraName: json["extraName"],
    extraPrice: json["extraPrice"],
    extraQuantity: json["extraQuantity"],
  );

  Map<String, dynamic> toJson() => {
    //  "_id": id,
    "extraName": extraName,
    "extraPrice": extraPrice,
    "extraQuantity": extraQuantity,
  };
}

class OrderOption {
  OrderOption({
    required this.id,
    required this.optionName,
    required this.optionVariant,
  });

  String id;
  String optionName;
  List<OrderOptionVariant> optionVariant;

  factory OrderOption.fromJson(Map<String, dynamic> json) => OrderOption(
    id: json["_id"],
    optionName: json["optionName"],
    optionVariant: List<OrderOptionVariant>.from(json["optionVariant"].map((x) => OrderOptionVariant.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    // "_id": id,
    "optionName": optionName,
    "optionVariant": List<dynamic>.from(optionVariant.map((x) => x.toJson())),
  };
}

class OrderOptionVariant {
  OrderOptionVariant({
    required this.id,
    required this.variantName,
    required this.variantPrice,
  });

  String id;
  String variantName;
  num variantPrice;

  factory OrderOptionVariant.fromJson(Map<String, dynamic> json) => OrderOptionVariant(
    id: json["_id"],
    variantName: json["variantName"],
    variantPrice: json["variantPrice"],
  );

  Map<String, dynamic> toJson() => {
    // "_id": id,
    "variantName": variantName,
    "variantPrice": variantPrice,
  };
}

class OrderPortion {
  OrderPortion({
    required this.id,
    required this.portionName,
    required this.portionPrice,
  });

  String id;
  String portionName;
  num portionPrice;

  factory OrderPortion.fromJson(Map<String, dynamic> json) => OrderPortion(
    id: json["_id"],
    portionName: json["portionName"],
    portionPrice: json["portionPrice"],
  );

  Map<String, dynamic> toJson() => {
    // "_id": id,
    "portionName": portionName,
    "portionPrice": portionPrice,
  };
}

class Payment {
  Payment({
    required this.id,
    required this.paymentStatus,
    required this.paymentTypeAmount,
    required this.paymentType,
    required this.cashAmount,
    required this.cashFixAmount,
    required this.changeAmount,
    required this.paymentAmount,
    required this.paymentDate,
    required this.paymentTime,
  });

  String id;
  String paymentStatus;
  num paymentTypeAmount = 0.00;
  String paymentType;
  num cashAmount = 0.0;
  num cashFixAmount = 0.0;
  num changeAmount = 0.0;
  num paymentAmount;
  DateTime paymentDate;
  DateTime paymentTime;

  factory Payment.buildEmpty() => Payment(
      id: '',
      // paymentType: '',
      paymentType: '',
      paymentStatus: '',
      paymentTypeAmount: 0,
      cashAmount: 0,
      cashFixAmount: 0,
      changeAmount: 0,
      paymentAmount: 0,
      paymentDate: DateTime.now(),
      paymentTime: DateTime.now());

  factory Payment.fromJson(Map<String, dynamic> json) => Payment(
    id: json["_id"],
    paymentType: json["paymentType"],
    paymentStatus: json["paymentStatus"],
    paymentAmount: json["paymentAmount"],
    paymentTypeAmount: json["paymentTypeAmount"],
    cashAmount: json["cashAmount"],
    cashFixAmount: json["cashFixAmount"],
    changeAmount: json["changeAmount"],
    paymentDate: DateTime.parse(json["paymentDate"]),
    paymentTime: DateTime.parse(json["paymentTime"]),
  );

  Map<String, dynamic> toJson() => {
    // "_id": id,
    "paymentType": paymentType,
    "paymentStatus": paymentStatus,
    "paymentTypeAmount": paymentTypeAmount,
    "cashAmount": cashAmount,
    "cashFixAmount": cashFixAmount,
    "changeAmount": changeAmount,
    "paymentAmount": paymentAmount,
    "paymentDate": paymentDate.toIso8601String(),
    "paymentTime": paymentTime.toIso8601String(),
  };
}

class Tip {
  Tip({
    required this.id,
    required this.tip,
    required this.ref,
  });

  String id;
  num tip;
  String ref;

  factory Tip.fromJson(Map<String, dynamic> json) => Tip(
    id: json["_id"],
    tip: json["tip"],
    ref: json["ref"],
  );

  Map<String, dynamic> toJson() => {
    // "_id": id,
    "tip": tip,
    "ref": ref,
  };
}

class Discounts {
  Discounts({
    required this.fixedDiscKitchen,
    required this.percentDiscKitchen,
    required this.fixedDiscBar,
    required this.percentDiscBar,
    required this.fixedDiscAll,
    required this.percentDiscAll,
  });

  num fixedDiscKitchen;
  num percentDiscKitchen;
  num fixedDiscBar;
  num percentDiscBar;
  num fixedDiscAll;
  num percentDiscAll;

  factory Discounts.fromJson(Map<String, dynamic> json) => Discounts(
    fixedDiscKitchen: json["fixedDiscKitchen"],
    percentDiscKitchen: json["percentDiscKitchen"],
    fixedDiscBar: json["fixedDiscBar"],
    percentDiscBar: json["percentDiscBar"],
    fixedDiscAll: json["fixedDiscAll"],
    percentDiscAll: json["percentDiscAll"],
  );

  Map<String, dynamic> toJson() => {
    "fixedDiscKitchen": fixedDiscKitchen,
    "percentDiscKitchen": percentDiscKitchen,
    "fixedDiscBar": fixedDiscBar,
    "percentDiscBar": percentDiscBar,
    "fixedDiscAll": fixedDiscAll,
    "percentDiscAll": percentDiscAll,
  };

  factory Discounts.buildEmpty() => Discounts(fixedDiscAll: 0.00, percentDiscAll: 0.00, fixedDiscBar: 0.00, percentDiscBar: 0.00, fixedDiscKitchen: 0.00, percentDiscKitchen: 0.00);
}

class Refund {
  Refund({required this.refundReason, required this.refundPaymentType, required this.refundPaymentTypeAmount, required this.refundCashAmount, required this.totalRefundAmount, required this.refundDate, required this.refundChangeAmount});

  String refundReason;
  String refundPaymentType;
  num refundPaymentTypeAmount;
  num refundCashAmount;
  num totalRefundAmount;
  DateTime refundDate;
  num refundChangeAmount;

  factory Refund.fromJson(Map<String, dynamic> json) => Refund(
    refundReason: json["refundReason"],
    refundPaymentType: json["refundPaymentType"],
    refundPaymentTypeAmount: json["refundPaymentTypeAmount"],
    refundCashAmount: json["refundCashAmount"],
    totalRefundAmount: json["totalRefundAmount"],
    refundChangeAmount: json["refundChangeAmount"],
    refundDate: DateTime.parse(json["refundDate"]),
  );

  Map<String, dynamic> toJson() => {
    "refundReason": refundReason,
    "refundPaymentType": refundPaymentType,
    "refundPaymentTypeAmount": refundPaymentTypeAmount,
    "refundCashAmount": refundCashAmount,
    "totalRefundAmount": totalRefundAmount,
    "refundChangeAmount": refundChangeAmount,
    "refundDate": refundDate.toIso8601String(),
  };

  factory Refund.buildEmpty() => Refund(
    refundReason: "",
    refundPaymentType: "",
    refundPaymentTypeAmount: 0.00,
    refundCashAmount: 0.00,
    totalRefundAmount: 0.00,
    refundChangeAmount: 0.00,
    refundDate: DateTime.now(),
  );
}
// To parse this JSON data, do
//
//     final tableModel = tableModelFromJson(jsonString);

List<TableModel> tableModelFromJson(String str) => List<TableModel>.from(json.decode(str).map((x) => TableModel.fromJson(x)));

String tableModelToJson(List<TableModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TableModel {
  TableModel({
    required this.id,
    required this.name,
    required this.capacity,
    required this.status,
    required this.area,
    required this.createdBy,
    required this.updatedBy,
    required this.restId,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  String id;
  String name;
  int capacity;
  int status;
  String area;
  String createdBy;
  String updatedBy;
  String restId;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  factory TableModel.fromJson(Map<String, dynamic> json) => TableModel(
    id: json["_id"],
    name: json["name"],
    capacity: json["capacity"],
    status: json["status"],
    area: json["area"],
    createdBy: json["createdBy"],
    updatedBy: json["updatedBy"],
    restId: json["restId"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "capacity": capacity,
    "status": status,
    "area": area,
    "createdBy": createdBy,
    "updatedBy": updatedBy,
    "restId": restId,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "__v": v,
  };
}

List<CustomerModel> getCustomerFromJson(String str) => List<CustomerModel>.from(json.decode(str).map((x) => CustomerModel.fromJson(x)));

String getCustomerToJson(List<CustomerModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CustomerModel {
  CustomerModel(
      {required this.id,
        required this.name,
        required this.phone,
        required this.floorAptNo,
        required this.houseNo,
        required this.buildingName,
        required this.streenName,
        required this.postCode,
        required this.deviceToken,
        required this.townCity,
        required this.createdAt,
        required this.updatedAt,
        required this.v,
        required this.notes});

  String id;
  String name;
  String phone;
  String floorAptNo;
  String houseNo;
  String buildingName;
  String streenName;
  String postCode;
  String deviceToken;
  String townCity;
  DateTime createdAt;
  DateTime updatedAt;
  int v;
  String notes;

  factory CustomerModel.buildEmpty() => CustomerModel(id: "", name: "", phone: "", floorAptNo: "", houseNo: "", buildingName: "", streenName: "", postCode: "", deviceToken: "", townCity: "", notes: "", createdAt: DateTime.now(), updatedAt: DateTime.now(), v: 0);

  factory CustomerModel.fromJson(Map<String, dynamic> json) => CustomerModel(
    id: json["_id"],
    name: json["name"],
    phone: json["phone"],
    floorAptNo: json["floorAptNo"],
    houseNo: json["houseNo"],
    buildingName: json["buildingName"] ?? 'No Address',
    streenName: json["streenName"],
    postCode: json["postCode"],
    deviceToken: json["deviceToken"] ?? '',
    townCity: json["townCity"] ?? 'No Address',
    notes: json['notes'] ?? '',
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "phone": phone,
    "floorAptNo": floorAptNo,
    "houseNo": houseNo,
    "buildingName": buildingName,
    "streenName": streenName,
    "postCode": postCode,
    "deviceToken": deviceToken,
    "townCity": townCity,
    "notes": notes,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "__v": v,
  };
}

List<CategoryModel> categoryModelFromJson(String str) => List<CategoryModel>.from(json.decode(str).map((x) => CategoryModel.fromJson(x)));

String categoryModelToJson(List<CategoryModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CategoryModel {
  CategoryModel({
    required this.id,
    required this.name,
    required this.createdBy,
    required this.updatedBy,
    required this.restId,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
    required this.sl, //by mahadi
  });

  String id;
  String name;
  String createdBy;
  String updatedBy;
  String restId;
  DateTime createdAt;
  DateTime updatedAt;
  int v;
  bool isMarked = false;
  int sl; //by mahadi
  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
    id: json["_id"],
    name: json["name"],
    createdBy: json["createdBy"],
    updatedBy: json["updatedBy"],
    restId: json["restId"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
    sl: json["sl"], //by mahadi
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "createdBy": createdBy,
    "updatedBy": updatedBy,
    "restId": restId,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "__v": v,
    'sl': sl, //by mahadi
  };
}
