
tripleCheck = product (head [[x,y,1000-x-y] | x<- [1..1000], y<-[x..1000], x*x + y*y == (1000-x-y)*(1000-x-y)])
