clc
clear all
close all

y=load('C:\Users\preet\Desktop\sampless.txt');
csvwrite('C:\Users\preet\Desktop\old.csv',y);
py = periodogram(y);
wp=220;
ws=250;
up=0.5;
us=5;
fs=400;
w1=wp/fs;
w2=ws/fs;
[N,wn]=buttord(w1,w2,up,us);
disp(N);
[B,A]=butter(N,wn,'low');

z=filter(B,A,y);
csvwrite('C:\Users\preet\Desktop\new.csv',z);

