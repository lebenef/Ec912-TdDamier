//Les variables La et Lb définissent la postion des pions sur le damier 
//La variable Color définie la couleur des pions
//La variable Taille définie la grandeur des pions sur les ordonnées X er Y
//La variable Hauteur définie la hauteur des pions sur l'ordonnée Z


module pion(La,Lb,Color,Taille,Hauteur,Epaisseur)
{
//Conception des pions
    for(i = [1:10])
    {   
      for(j = [La:Lb])
      {
      
      translate([i*Taille+Taille/2,j*Taille+Taille/2,Hauteur+1]) color(Color)
        cylinder (d=Taille, h=Epaisseur); 
    
      }
    }
}

//La variable Taille définie la grandeur des cases et des cercles sur les ordonées X et Y 
//La variable Hauteur permet de faire varié la hauteur sur l'ordonné Z
//Les Variable Noir Blanc Marron et Beige définissent les couleurs du damier et des pions 

module damier (Taille = 10,Hauteur =0, Epaisseur = 1, Noir = [1,1,1] , Blanc = [0,0,0], Marron = [0.34,0.16,0] , Beige= [0.95,0.95,0.85] )
{
//Conception du Damier 
    for(i = [1:10])
    {   
      for(j = [1:10])
      {
       if(j%2==0&& i%2==0)
      translate([i*Taille,j*Taille,Hauteur]) color(Noir)
        cube ([Taille,Taille,Epaisseur]); 
       
       
        else if (j%2==1&& i%2==1)
      translate([i*Taille,j*Taille,Hauteur]) color(Noir)
        cube ([Taille,Taille,Epaisseur]); 
       else 
           
       translate([i*Taille,j*Taille,Hauteur]) color(Blanc)
        cube ([Taille,Taille,Epaisseur]); 
    
      }
    }

// Pions Marrons
pion(La=1,Lb=2,Color=Marron,Taille=Taille,Hauteur=Hauteur,Epaisseur=Epaisseur*2);

// Pions  Beiges
pion(La=9,Lb=10,Color=Beige,Taille=Taille,Hauteur=Hauteur,Epaisseur=Epaisseur);

}
damier ();
