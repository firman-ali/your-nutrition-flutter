class FoodNutrition {
  String name;
  String about;
  String description;
  String calories;
  String fat;
  String sodium;
  String carbohydrates;
  String fiber;
  String sugar;
  String protein;
  String imageAsset;

  FoodNutrition({
    required this.name,
    required this.about,
    required this.description,
    required this.calories,
    required this.fat,
    required this.sodium,
    required this.carbohydrates,
    required this.fiber,
    required this.sugar,
    required this.protein,
    required this.imageAsset,
  });
}

var foodNutritionList = [
  FoodNutrition(
    name: 'Jagung',
    about:
        'Jagung adalah salah satu sayuran paling populer di AS yang kadang-kadang mendapat rap buruk karena memiliki banyak gula dan karbohidrat alami.',
    description:
        'Informasi nutrisi berikut disediakan oleh USDA untuk 1 medium (panjang 6 3/4" sampai 7 1/2") jagung kuning manis (menghasilkan 102g).',
    calories: '88',
    fat: '1.4g',
    sodium: '15mg',
    carbohydrates: '19g',
    fiber: '2g',
    sugar: '6.4g',
    protein: '3.3g',
    imageAsset: 'assets/images/jagung.jpg',
  ),
  FoodNutrition(
    name: 'Beras',
    about:
        'Beras adalah benih dari spesies rumput Oryza sativa (beras Asia) atau kurang umum Oryza glaberrima (beras Afrika).',
    description:
        'Informasi nutrisi berikut disediakan oleh USDA untuk 1 cangkir (186g) beras putih yang dimasak, dan berbutir pendek.',
    calories: '242',
    fat: '0.4g',
    sodium: '0mg',
    carbohydrates: '53.4g',
    fiber: '0.6g',
    sugar: '0g',
    protein: '4.4g',
    imageAsset: 'assets/images/beras.jpg',
  ),
  FoodNutrition(
    name: 'Kentang',
    about:
        'Kentang adalah umbi bertepung dari tanaman Solanum tuberosum dan merupakan sayuran akar asli Amerika.',
    description:
        'Informasi nutrisi berikut disediakan oleh USDA untuk satu kentang panggang (173g) (dengan diameter 2 1/4" hingga 3 1/4") dengan kulit dan tidak ada garam atau topping tambahan.',
    calories: '164',
    fat: '0.2g',
    sodium: '24mg',
    carbohydrates: '37g',
    fiber: '4g',
    sugar: '1.9g',
    protein: '4.6g',
    imageAsset: 'assets/images/kentang.jpg',
  ),
  FoodNutrition(
    name: 'Pisang',
    about:
        'Di beberapa negara, pisang yang digunakan untuk memasak dapat disebut "pisang raja", membedakannya dari pisang pencuci mulut.',
    description:
        'Informasi nutrisi berikut disediakan oleh USDA untuk Satu pisang berukuran sedang (118g). Pisang dikenal sebagai sumber potasium, dan satu porsi mengandung 422mg kalium.',
    calories: '105',
    fat: '0.4g',
    sodium: '1.2mg',
    carbohydrates: '27g',
    fiber: '3.1g',
    sugar: '14.4g',
    protein: '1.3g',
    imageAsset: 'assets/images/pisang.jpg',
  ),
  FoodNutrition(
    name: 'Singkong',
    about:
        'Singkong, juga dikenal sebagai yuca, harus dimasak atau ditekan sebelum dimakan, karena beracun dalam bentuk mentahnya. Ketika mentah, daging singkong berwarna putih',
    description:
        'Informasi nutrisi berikut disediakan oleh USDA untuk 1 cangkir (103g) singkong mentah.',
    calories: '165',
    fat: '0.3g',
    sodium: '14.4mg',
    carbohydrates: '39g',
    fiber: '1.9g',
    sugar: '1.8g',
    protein: '1.4g',
    imageAsset: 'assets/images/singkong.jpg',
  ),
];
