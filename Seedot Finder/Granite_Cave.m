%% setup
clear all; close all; clc; imaqreset;

eyes = webcam(2);
a = arduino();
sr = servo(a, 'D2');
sd = servo(a, 'D7');
sl = servo(a, 'D8');
sa = servo(a, 'D12');
refimg = imread('sableye.png');
% writePosition(sr, .5);
% writePosition(sd, .5);
% writePosition(sl, .5);
% writePosition(sa, .5);
i = 0;
%% Left-right movement until fight
%only 20 loops since water gun has 25 pp
while i <= 20
fightscene = leftright(sr, sl, sa, eyes);
%if we're in fightscene, check mon
if fightscene
   sableye = CrossCorr(refimg, snapshot(eyes), .7, 1);
   %if correct mon, alert. Otherwise run.
   if sableye
    autorun(sr, sd, sa);
    i = i - 1;
    %autofight(sa); %I always fight once I am strong enough
   else
       autofight(sa);
   end 
end
i = i + 1;
end
clear all;
 a = arduino();
       playTone(a,'D10',2400,40);
       writeDigitalPin(a, 'D4', 1);
       pause(10);
       clear all;