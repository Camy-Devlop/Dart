class Etudiant {
  String? nom;
  String? prenom;
  final DateTime? dateNaissance;
  String? adresse;
  String? email;
  List<double>? points;

  Etudiant(this.nom, this.prenom,
      {this.points, this.dateNaissance, this.adresse, this.email});

  void add_point(double a) {
    if (this.points != null) {
      this.points!.add(a);
    } else {
      this.points = [a];
    }
  }

  void presentation() {
    print("Je m'appelle ${this.nom} ${this.prenom}");
  }

  String nomPrenom() {
    return this.nom! + " " + this.prenom!;
  }

  double total_point_100() {
    double notes = 0;

    if (this.points != null) {
      this.points!.forEach((element) {
        notes += element;
      });
    }
    return this.points!.length > 0 ? notes / this.points!.length : 0;
    //print(this.points != null ? notes : "il y pas de points!!!");
  }

  String toString() {
    return (this.nom == null || this.prenom == null) ? "" : nomPrenom();
  }
}
