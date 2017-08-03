x = 1;
y = 2;

function [out1, out2, out3] = fib(in1, in2) 
    out3 = in1 + in2;
    out1 = in2;
    out2 = out3;
end


out = y;

z = 0;
while(1)
    [x, y, z] = fib(x, y);
    if(z < 4000000)
        if(rem(z, 2) == 0)
            out += z;
        end
    else
        break;
    end
end

disp(out)
