

class Etudiant
{
  String? nom;
  String? prenom;
  List<double>? points;
  
  Etudiant(this.nom,this.prenom);
  
  void add_point(double a)
  { 
    if(this.points!=null)
    {  
      this.points!.add(a);
    }else{
      this.points=[a];
    }
  }
  
  void presentation()
  {
    print("Je m'appelle ${this.nom} ${this.prenom}");
  }
  
  void total_point_100()
  {
    int nombre;
    double notes=0;
    
    if(this.points!=null)
    {
      this.points!.forEach((element){
        notes+=element;
      });
    }
    
    print(this.points!=null?notes:"il y pas de points!!!");
    
  }
}

