class Navigasi {
  String iconPath;

  Navigasi({
    required this.iconPath
  });

  static List <Navigasi> getNavigasi(){
    List<Navigasi> nav = [];

    nav.add(
      Navigasi(iconPath: "assets/heartnew.svg")
    );

    nav.add(
      Navigasi(iconPath: "assets/heartnew_red.svg")
    );

    return nav;
  }
}