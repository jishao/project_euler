target = 600851475143;
x = 3;
xend = sqrt(target);

largest = 0;

function out = isPrime(in)
    inend = sqrt(in);
    out = 1;
    for x=2:inend
        if(rem(in, x) == 0)
            out = 0;
            break;
        end
    end
end

factors = [];

while(x <= xend)
    if(rem(target, x) == 0)
        factors = [factors, x];
        y = target/x;
        if(isPrime(y))
            largest = y;
            break;
        end
    end
    x += 2;
end

disp(factors);

if(largest == 0)
    for i=length(factors):-1:1
        y = factors(i);
        if(isPrime(y))
            largest = y;
            break;
        end
    end
end

disp(largest);
