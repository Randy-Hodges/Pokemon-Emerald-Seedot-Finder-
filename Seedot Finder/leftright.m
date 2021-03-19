function [fightscene2] = leftright(sr, sl, sa, cam)
%Makes the player run left and right until an encounter occurs. 
%Output: True if a pokemon is encountered, False if no encounter in t loops
t = 0;
fightscene = false;

while t < 50
    
%right and left pause is 1.5 for starting area,
%right
writePosition(sr, .5);
pause(.2);
writePosition(sr, .35);
pause(1.5);
writePosition(sr, .5);

%left
writePosition(sl, .5);
pause(.1);
writePosition(sl, .275);
pause(1.5);
writePosition(sl, .5);

%check if fightscene
fightscene = CrossCorr(imread('enemyinfo.png'), snapshot(cam), .27, 0);
if fightscene
    break
end
t = t + 1;
end

fightscene2 = fightscene;
end


