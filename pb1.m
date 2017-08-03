y = 0;
for x=1:(1000-1)
    if(rem(x,3)==0 || rem(x,5)==0)
        y = y + x;
    end
end
disp(y)
