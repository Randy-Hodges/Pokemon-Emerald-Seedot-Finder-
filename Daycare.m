%% setup
clear all; close all; clc; imaqreset;
a = arduino();
sr = servo(a, 'D2');
sd = servo(a, 'D7');
sl = servo(a, 'D8');
sa = servo(a, 'D12');
i=0;
%%
while(i < 200)
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

i = i + 1;
end