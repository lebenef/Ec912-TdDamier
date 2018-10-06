//  Damier 
for(i = [1:10])
{   
  for(j = [1:10])
  {
   if(j%2==0&& i%2==0)
  translate([i*10,j*10,0]) color([1,1,1])
    square ([10,10]); 
   
   
    else if (j%2==1&& i%2==1)
  translate([i*10,j*10,0]) color([1,1,1])
    square ([10,10]); 
   else 
       
   translate([i*10,j*10,0]) color([0,0,0])
    square ([10,10]); 

  }
}


// Pions Marrons
for(i = [1:10])
{   
  for(j = [1:2])
  {
  
  translate([i*10+5,j*10+5,1]) color([0.34,0.16,0])
    circle (h=3, d=10); 

  }
}

// Pions  Beige
for(i = [1:10])
{   
  for(j = [9:10])
  {
  
  translate([i*10+5,j*10+5,1]) color([0.96,0.96,0.86])
    circle (h=3, d=10); 

  }
}


