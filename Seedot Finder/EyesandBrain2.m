%% setup
clear all; close all; clc; imaqreset;

eyes = webcam(2);
a = arduino();
sr = servo(a, 'D2'); %d-pad right
sd = servo(a, 'D7'); %d-pad down
sl = servo(a, 'D8'); %d-pad left
sa = servo(a, 'D12'); %'A' button
refimg = imread('ralts.png');
% writePosition(sr, .5);
% writePosition(sd, .5);
% writePosition(sl, .5);
% writePosition(sa, .5);
%% Left-right movement until fight
for i = 1:150
%leftright runs until a fightscene is encountered, then returns true
fightscene = leftright(sr, sl, sa, eyes);
%if we're in fightscene, check pokemon
if fightscene
    pause(2);
   seedot = CrossCorr(refimg, snapshot(eyes), .7, 1);
   %if correct mon, alert. Otherwise run.
   if seedot
    clear all;
       a = arduino();
       playTone(a,'D10',2400,40);
       writeDigitalPin(a, 'D4', 1);
       pause(10);
       clear all;
       break;
   else
       autorun(sr, sd, sa);
   end
   %there is a problem if we exit left-right without fightscene being true,
   %so I alert
else
    clear all;
       a = arduino();
       playTone(a,'D10',1200,40);
       writeDigitalPin(a, 'D4', 1);
     breakout = true;
       pause(10);
       clear all;
       break;
end
end
