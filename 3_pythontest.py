def getMod (a) :
    
    start = 2
    d = a % start

    while start < a :
        while d == 0:
            a = a / start
            if a == start:
                return a
            d = a % start

        start += 1
        d = a % start

    return a

    
    
    
