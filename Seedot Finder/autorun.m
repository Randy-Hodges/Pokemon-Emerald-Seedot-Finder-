function [] = autorun(sr, sd, sa)
%   Auto run from battle scenes. Pause for 5 sec, press a, right, down, a,
%   a

%D7 is down, D2 right, D8 is left, D12 is a/b
%pause is 5 for beginning

pause(1);

%pressing the 'a' button. .67 is a, .23 is b
writePosition(sa, .5);
pause(.2);
writePosition(sa, .67);
pause(.7);
writePosition(sa, .5);
%have to wait a longer time in the case that a ralts appears with trace.
%Trace adds extra text I otherwise wouldn't see. beginning area is 6
 pause(4);
 
%right movement
writePosition(sr, .5);
pause(.2);
writePosition(sr, .35);
pause(.7);
writePosition(sr, .5);

%down movement
writePosition(sd, .5);
pause(.2);
writePosition(sd, .65);
pause(.7);
writePosition(sd, .5);

%pressing the 'a' button 
writePosition(sa, .5);
pause(.2);
writePosition(sa, .67);
pause(.7);
writePosition(sa, .5); 

pause(1);

%a again
writePosition(sa, .5);
pause(.2);
writePosition(sa, .67);
pause(.7);
writePosition(sa, .5); 

end

