
tripleCheck = head [x*y*z | x<- [1..500], y<-[x..700], z<-[y..1000],x+y+z==1000, x*x + y*y == z*z]

