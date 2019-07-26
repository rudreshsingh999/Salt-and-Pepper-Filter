function [mean] = average(ar,x,y)
ar = double(ar);
sum = ar(x-1,y)+ar(x+1,y)+ar(x,y-1)+ar(x,y+1)+ar(x-1,y-1)+ar(x-1,y+1)+ar(x+1,y-1)+ar(x+1,y+1);
mean = round(sum/8);
end
