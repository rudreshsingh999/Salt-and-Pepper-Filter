function [Final_Img] = meanfilt2(Initial_Img)
[row column] = size(Initial_Img);
for x=2:row-1
    for y=2:column-1
        if Initial_Img(x,y) > 150 && Initial_Img(x+1,y+1)<150
            Initial_Img(x,y) = average(Initial_Img,x,y);
        end
        if Initial_Img(x,y) < 70  && Initial_Img(x+1,y+1) > 70
            Initial_Img(x,y) = average(Initial_Img,x,y);
        end
        if Initial_Img(x,y)==255
            Initial_Img(x,y) = average(Initial_Img,x,y);
        end
        if Initial_Img(x,y)== 0
            Initial_Img(x,y) = average(Initial_Img,x,y);
        end
    end
end
Final_Img = Initial_Img;
end

