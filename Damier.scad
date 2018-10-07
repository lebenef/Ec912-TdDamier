
//La variable Taille défini la grandeur des cases et des cercles sur les ordonées x et y 
//La variable Hauteur permet de faire varié la hauteur sur l'ordonné Z

module damier (Taille = 10,Hauteur =0,Noir = [1,1,1] , Blanc = [0,0,0], Marron = [0.34,0.16,0] , Beige= [0.96,0.96,0.86] )
{
//  Damier 
    for(i = [1:10])
    {   
      for(j = [1:10])
      {
       if(j%2==0&& i%2==0)
      translate([i*Taille,j*Taille,Hauteur]) color(Noir)
        square ([Taille,Taille]); 
       
       
        else if (j%2==1&& i%2==1)
      translate([i*Taille,j*Taille,Hauteur]) color(Noir)
        square ([Taille,Taille]); 
       else 
           
       translate([i*Taille,j*Taille,Hauteur]) color(Blanc)
        square ([Taille,Taille]); 
    
      }
    }


// Pions Marrons
    for(i = [1:10])
    {   
      for(j = [1:2])
      {
      
      translate([i*Taille+Taille/2,j*Taille+Taille/2,Hauteur+1]) color(Marron)
        circle (d=Taille); 
    
      }
    }

// Pions  Beige
    for(i = [1:10])
    {   
      for(j = [9:10])
      {
      
      translate([i*Taille+Taille/2,j*Taille+Taille/2,Hauteur+1]) color(Beige)
        circle (d=Taille); 
    
      }
    }


}
damier ();
