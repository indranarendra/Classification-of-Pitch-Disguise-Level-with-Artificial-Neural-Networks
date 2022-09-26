clc;
clear all;
close all;
fs=16000;
p=floor(3*log(fs));
n=floor(0.0256*16000);
inc=floor(0.010*16000);

A=[];
B=[];
C=[];
D=[];
F=[];
G=[];
I=[];
J=[];
K=[];
L=[];
M=[];


H1=[];
H2=[];
H3=[];


a=zeros(1,5700);
b=ones(1,5700);
f=2*ones(1,5700);
d=3*ones(1,5700);
e=4*ones(1,5700);
g=5*ones(1,5700);
h=6*ones(1,5700);
j=7*ones(1,5700);
k=8*ones(1,5700);
l=9*ones(1,5700);
m=10*ones(1,5700);


for i=1:5700
    i
    file1=sprintf('timitorg (%d).wav',i);
    x1=wavread(file1);
    tdata1=melcepst(x1,fs,'dD',12,p,n,inc,0,0.5);
    t1=tdata1(:,1:12);
    t2=tdata1(:,13:24);
    t3=tdata1(:,25:36);
    E=mean(tdata1);
    E1=E(1:12);
    E2=E(13:24);
    E3=E(25:36);
    Cr1=corr(t1);
    for c = 1:12
        for r = c+1:12
            H1=[H1,Cr1(c,r)];
        end
    end
    Cr2=corr(t2);
    for c = 1:12
        for r = c+1:12
            H2=[H2,Cr2(c,r)];
        end
    end
    Cr3=corr(t3);
    for c = 1:12
        for r = c+1:12
            H3=[H3,Cr3(c,r)];
        end
    end
    W=[E1,H1,E2,H2,E3,H3];
    A=[A;W];
H1=[];
H2=[];
H3=[];
end
save(sprintf('tor.mat'),'A');
for i=1:5700
    i
    file2=sprintf('timit4 (%d).wav',i);
    x2=wavread(file2);
    tdata2=melcepst(x2,fs,'dD',12,p,n,inc,0,0.5);
    t1=tdata2(:,1:12);
    t2=tdata2(:,13:24);
    t3=tdata2(:,25:36);
    E=mean(tdata2);
    E1=E(1:12);
    E2=E(13:24);
    E3=E(25:36);
    Cr1=corr(t1);
    for c = 1:12
        for r = c+1:12
            H1=[H1,Cr1(c,r)];
        end
    end
    Cr2=corr(t2);
    for c = 1:12
        for r = c+1:12
            H2=[H2,Cr2(c,r)];
        end
    end
    Cr3=corr(t3);
    for c = 1:12
        for r = c+1:12
            H3=[H3,Cr3(c,r)];
        end
    end
    W=[E1,H1,E2,H2,E3,H3];
    B=[B;W];
H1=[];
H2=[];
H3=[];
end
save(sprintf('t4.mat'),'B');


for i=1:5700
    i
    file3=sprintf('timit5 (%d).wav',i);
    x3=wavread(file3);
    tdata3=melcepst(x3,fs,'dD',12,p,n,inc,0,0.5);
    t1=tdata3(:,1:12);
    t2=tdata3(:,13:24);
    t3=tdata3(:,25:36);
    E=mean(tdata3);
    E1=E(1:12);
    E2=E(13:24);
    E3=E(25:36);
    Cr1=corr(t1);
    for c = 1:12
        for r = c+1:12
            H1=[H1,Cr1(c,r)];
        end
    end
    Cr2=corr(t2);
    for c = 1:12
        for r = c+1:12
            H2=[H2,Cr2(c,r)];
        end
    end
    Cr3=corr(t3);
    for c = 1:12
        for r = c+1:12
            H3=[H3,Cr3(c,r)];
        end
    end
    W=[E1,H1,E2,H2,E3,H3];
    C=[C;W];
H1=[];
H2=[];
H3=[];
end

save(sprintf('t5.mat'),'C');


for i=1:5700
    i
    file4=sprintf('timit6 (%d).wav',i);
    x4=wavread(file4);
    tdata4=melcepst(x4,fs,'dD',12,p,n,inc,0,0.5);
    t1=tdata4(:,1:12);
    t2=tdata4(:,13:24);
    t3=tdata4(:,25:36);
    E=mean(tdata4);
    E1=E(1:12);
    E2=E(13:24);
    E3=E(25:36);
    Cr1=corr(t1);
    for c = 1:12
        for r = c+1:12
            H1=[H1,Cr1(c,r)];
        end
    end
    Cr2=corr(t2);
    for c = 1:12
        for r = c+1:12
            H2=[H2,Cr2(c,r)];
        end
    end
    Cr3=corr(t3);
    for c = 1:12
        for r = c+1:12
            H3=[H3,Cr3(c,r)];
        end
    end
    W=[E1,H1,E2,H2,E3,H3];
    D=[D;W];
H1=[];
H2=[];
H3=[];
end
save(sprintf('t6.mat'),'D');

for i=1:5700
    i
    file5=sprintf('timit7 (%d).wav',i);
    x5=wavread(file5);
    tdata5=melcepst(x5,fs,'dD',12,p,n,inc,0,0.5);
    t1=tdata5(:,1:12);
    t2=tdata5(:,13:24);
    t3=tdata5(:,25:36);
    E=mean(tdata5);
    E1=E(1:12);
    E2=E(13:24);
    E3=E(25:36);
    Cr1=corr(t1);
    for c = 1:12
        for r = c+1:12
            H1=[H1,Cr1(c,r)];
        end
    end
    Cr2=corr(t2);
    for c = 1:12
        for r = c+1:12
            H2=[H2,Cr2(c,r)];
        end
    end
    Cr3=corr(t3);
    for c = 1:12
        for r = c+1:12
            H3=[H3,Cr3(c,r)];
        end
    end
    W=[E1,H1,E2,H2,E3,H3];
    F=[F;W];
H1=[];
H2=[];
H3=[];
end
save(sprintf('t7.mat'),'F');

for i=1:5700
    i
    file5=sprintf('timit8 (%d).wav',i);
    x5=wavread(file5);
    tdata5=melcepst(x5,fs,'dD',12,p,n,inc,0,0.5);
    t1=tdata5(:,1:12);
    t2=tdata5(:,13:24);
    t3=tdata5(:,25:36);
    E=mean(tdata5);
    E1=E(1:12);
    E2=E(13:24);
    E3=E(25:36);
    Cr1=corr(t1);
    for c = 1:12
        for r = c+1:12
            H1=[H1,Cr1(c,r)];
        end
    end
    Cr2=corr(t2);
    for c = 1:12
        for r = c+1:12
            H2=[H2,Cr2(c,r)];
        end
    end
    Cr3=corr(t3);
    for c = 1:12
        for r = c+1:12
            H3=[H3,Cr3(c,r)];
        end
    end
    W=[E1,H1,E2,H2,E3,H3];
    G=[G;W];
H1=[];
H2=[];
H3=[];
end
save(sprintf('t8.mat'),'G');

for i=1:5700
    i
    file5=sprintf('timit-4 (%d).wav',i);
    x5=wavread(file5);
    tdata5=melcepst(x5,fs,'dD',12,p,n,inc,0,0.5);
    t1=tdata5(:,1:12);
    t2=tdata5(:,13:24);
    t3=tdata5(:,25:36);
    E=mean(tdata5);
    E1=E(1:12);
    E2=E(13:24);
    E3=E(25:36);
    Cr1=corr(t1);
    for c = 1:12
        for r = c+1:12
            H1=[H1,Cr1(c,r)];
        end
    end
    Cr2=corr(t2);
    for c = 1:12
        for r = c+1:12
            H2=[H2,Cr2(c,r)];
        end
    end
    Cr3=corr(t3);
    for c = 1:12
        for r = c+1:12
            H3=[H3,Cr3(c,r)];
        end
    end
    W=[E1,H1,E2,H2,E3,H3];
    I=[I;W];
H1=[];
H2=[];
H3=[];
end
save(sprintf('t-4.mat'),'I');

for i=1:5700
    i
    file5=sprintf('timit-5 (%d).wav',i);
    x5=wavread(file5);
    tdata5=melcepst(x5,fs,'dD',12,p,n,inc,0,0.5);
    t1=tdata5(:,1:12);
    t2=tdata5(:,13:24);
    t3=tdata5(:,25:36);
    E=mean(tdata5);
    E1=E(1:12);
    E2=E(13:24);
    E3=E(25:36);
    Cr1=corr(t1);
    for c = 1:12
        for r = c+1:12
            H1=[H1,Cr1(c,r)];
        end
    end
    Cr2=corr(t2);
    for c = 1:12
        for r = c+1:12
            H2=[H2,Cr2(c,r)];
        end
    end
    Cr3=corr(t3);
    for c = 1:12
        for r = c+1:12
            H3=[H3,Cr3(c,r)];
        end
    end
    W=[E1,H1,E2,H2,E3,H3];
    J=[J;W];
H1=[];
H2=[];
H3=[];
end
save(sprintf('t-5.mat'),'J');


for i=1:5700
    i
    file5=sprintf('timit-6 (%d).wav',i);
    x5=wavread(file5);
    tdata5=melcepst(x5,fs,'dD',12,p,n,inc,0,0.5);
    t1=tdata5(:,1:12);
    t2=tdata5(:,13:24);
    t3=tdata5(:,25:36);
    E=mean(tdata5);
    E1=E(1:12);
    E2=E(13:24);
    E3=E(25:36);
    Cr1=corr(t1);
    for c = 1:12
        for r = c+1:12
            H1=[H1,Cr1(c,r)];
        end
    end
    Cr2=corr(t2);
    for c = 1:12
        for r = c+1:12
            H2=[H2,Cr2(c,r)];
        end
    end
    Cr3=corr(t3);
    for c = 1:12
        for r = c+1:12
            H3=[H3,Cr3(c,r)];
        end
    end
    W=[E1,H1,E2,H2,E3,H3];
    K=[K;W];
H1=[];
H2=[];
H3=[];
end
save(sprintf('t-6.mat'),'K');

for i=1:5700
    i
    file5=sprintf('timit-7 (%d).wav',i);
    x5=wavread(file5);
    tdata5=melcepst(x5,fs,'dD',12,p,n,inc,0,0.5);
    t1=tdata5(:,1:12);
    t2=tdata5(:,13:24);
    t3=tdata5(:,25:36);
    E=mean(tdata5);
    E1=E(1:12);
    E2=E(13:24);
    E3=E(25:36);
    Cr1=corr(t1);
    for c = 1:12
        for r = c+1:12
            H1=[H1,Cr1(c,r)];
        end
    end
    Cr2=corr(t2);
    for c = 1:12
        for r = c+1:12
            H2=[H2,Cr2(c,r)];
        end
    end
    Cr3=corr(t3);
    for c = 1:12
        for r = c+1:12
            H3=[H3,Cr3(c,r)];
        end
    end
    W=[E1,H1,E2,H2,E3,H3];
    L=[L;W];
H1=[];
H2=[];
H3=[];
end
save(sprintf('t-7.mat'),'L');


for i=1:5700
    i
    file5=sprintf('timit-8 (%d).wav',i);
    x5=wavread(file5);
    tdata5=melcepst(x5,fs,'dD',12,p,n,inc,0,0.5);
    t1=tdata5(:,1:12);
    t2=tdata5(:,13:24);
    t3=tdata5(:,25:36);
    E=mean(tdata5);
    E1=E(1:12);
    E2=E(13:24);
    E3=E(25:36);
    Cr1=corr(t1);
    for c = 1:12
        for r = c+1:12
            H1=[H1,Cr1(c,r)];
        end
    end
    Cr2=corr(t2);
    for c = 1:12
        for r = c+1:12
            H2=[H2,Cr2(c,r)];
        end
    end
    Cr3=corr(t3);
    for c = 1:12
        for r = c+1:12
            H3=[H3,Cr3(c,r)];
        end
    end
    W=[E1,H1,E2,H2,E3,H3];
    M=[M;W];
H1=[];
H2=[];
H3=[];
end
save(sprintf('t-8.mat'),'M');

Y=[A;B;C;D;F;G;I;J;K;L;M]';
Z=[a b f d e g h j k l m];

inputs = Y;
targets = Z;
save(sprintf('inpt.mat'),'inputs');
save('trgt.mat','targets');

% Create a Pattern Recognition Network
hiddenLayerSize = 90;
net = patternnet(hiddenLayerSize);

 %Set up Division of Data for Training, Validation, Testing
 net.divideFcn='dividerand'; % divide data randomly
 net.divideMode='sample'; % divide up every sample
net.divideParam.trainRatio = 85/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 0/100;

%net.trainFcn='trainlm';
net.performfcn='mse';

% Train the Network
[net,tr] = train(net,inputs,targets);

% Test the Network
outputs = net(inputs);
errors = gsubtract(targets,outputs);
performance = perform(net,targets,outputs);

% View the Network
view(net);





A1=[];
A2=[];
A3=[];
A4=[];
A5=[];
A6=[];
A7=[];
A8=[];
A9=[];
A10=[];
A11=[];

for i=5701:6100
    i
    file1=sprintf('timitorg (%d).wav',i);
    x1=wavread(file1);
    tdata1=melcepst(x1,fs,'dD',12,p,n,inc,0,0.5);
    t1=tdata1(:,1:12);
    t2=tdata1(:,13:24);
    t3=tdata1(:,25:36);
    E=mean(tdata1);
    E1=E(1:12);
    E2=E(13:24);
    E3=E(25:36);
    Cr1=corr(t1);
    for c = 1:12
        for r = c+1:12
            H1=[H1,Cr1(c,r)];
        end
    end
    Cr2=corr(t2);
    for c = 1:12
        for r = c+1:12
            H2=[H2,Cr2(c,r)];
        end
    end
    Cr3=corr(t3);
    for c = 1:12
        for r = c+1:12
            H3=[H3,Cr3(c,r)];
        end
    end
    W=[E1,H1,E2,H2,E3,H3];
   A1=[A1;W];
H1=[];
H2=[];
H3=[];
end

save(sprintf('tstorg.mat'),'A1');

for i=5701:6100
    i
    file2=sprintf('timit4 (%d).wav',i);
    x2=wavread(file2);
    tdata2=melcepst(x2,fs,'dD',12,p,n,inc,0,0.5);
    t1=tdata2(:,1:12);
    t2=tdata2(:,13:24);
    t3=tdata2(:,25:36);
    E=mean(tdata2);
    E1=E(1:12);
    E2=E(13:24);
    E3=E(25:36);
    Cr1=corr(t1);
    for c = 1:12
        for r = c+1:12
            H1=[H1,Cr1(c,r)];
        end
    end
    Cr2=corr(t2);
    for c = 1:12
        for r = c+1:12
            H2=[H2,Cr2(c,r)];
        end
    end
    Cr3=corr(t3);
    for c = 1:12
        for r = c+1:12
            H3=[H3,Cr3(c,r)];
        end
    end
    W=[E1,H1,E2,H2,E3,H3];
   A2=[A2;W];
H1=[];
H2=[];
H3=[];
end

save(sprintf('tst4.mat'),'A2');

for i=5701:6100
    i
    file3=sprintf('timit5 (%d).wav',i);
    x3=wavread(file3);
    tdata3=melcepst(x3,fs,'dD',12,p,n,inc,0,0.5);
    t1=tdata3(:,1:12);
    t2=tdata3(:,13:24);
    t3=tdata3(:,25:36);
    E=mean(tdata3);
    E1=E(1:12);
    E2=E(13:24);
    E3=E(25:36);
    Cr1=corr(t1);
    for c = 1:12
        for r = c+1:12
            H1=[H1,Cr1(c,r)];
        end
    end
    Cr2=corr(t2);
    for c = 1:12
        for r = c+1:12
            H2=[H2,Cr2(c,r)];
        end
    end
    Cr3=corr(t3);
    for c = 1:12
        for r = c+1:12
            H3=[H3,Cr3(c,r)];
        end
    end
    W=[E1,H1,E2,H2,E3,H3];
   A3=[A3;W];
H1=[];
H2=[];
H3=[];
end
save(sprintf('tst5.mat'),'A3');



for i=5701:6100
    i
    file4=sprintf('timit6 (%d).wav',i);
    x4=wavread(file4);
    tdata4=melcepst(x4,fs,'dD',12,p,n,inc,0,0.5);
    t1=tdata4(:,1:12);
    t2=tdata4(:,13:24);
    t3=tdata4(:,25:36);
    E=mean(tdata4);
    E1=E(1:12);
    E2=E(13:24);
    E3=E(25:36);
    Cr1=corr(t1);
    for c = 1:12
        for r = c+1:12
            H1=[H1,Cr1(c,r)];
        end
    end
    Cr2=corr(t2);
    for c = 1:12
        for r = c+1:12
            H2=[H2,Cr2(c,r)];
        end
    end
    Cr3=corr(t3);
    for c = 1:12
        for r = c+1:12
            H3=[H3,Cr3(c,r)];
        end
    end
    W=[E1,H1,E2,H2,E3,H3];
   A4=[A4;W];
H1=[];
H2=[];
H3=[];
end
save(sprintf('tst6.mat'),'A4');


for i=5701:6100
    i
    file5=sprintf('timit7 (%d).wav',i);
    x5=wavread(file5);
    tdata5=melcepst(x5,fs,'dD',12,p,n,inc,0,0.5);
    t1=tdata5(:,1:12);
    t2=tdata5(:,13:24);
    t3=tdata5(:,25:36);
    E=mean(tdata5);
    E1=E(1:12);
    E2=E(13:24);
    E3=E(25:36);
    Cr1=corr(t1);
    for c = 1:12
        for r = c+1:12
            H1=[H1,Cr1(c,r)];
        end
    end
    Cr2=corr(t2);
    for c = 1:12
        for r = c+1:12
            H2=[H2,Cr2(c,r)];
        end
    end
    Cr3=corr(t3);
    for c = 1:12
        for r = c+1:12
            H3=[H3,Cr3(c,r)];
        end
    end
    W=[E1,H1,E2,H2,E3,H3];
   A5=[A5;W];
H1=[];
H2=[];
H3=[];
end

save(sprintf('tst7.mat'),'A5');


for i=5701:6100
    i
    file5=sprintf('timit8 (%d).wav',i);
    x5=wavread(file5);
    tdata5=melcepst(x5,fs,'dD',12,p,n,inc,0,0.5);
    t1=tdata5(:,1:12);
    t2=tdata5(:,13:24);
    t3=tdata5(:,25:36);
    E=mean(tdata5);
    E1=E(1:12);
    E2=E(13:24);
    E3=E(25:36);
    Cr1=corr(t1);
    for c = 1:12
        for r = c+1:12
            H1=[H1,Cr1(c,r)];
        end
    end
    Cr2=corr(t2);
    for c = 1:12
        for r = c+1:12
            H2=[H2,Cr2(c,r)];
        end
    end
    Cr3=corr(t3);
    for c = 1:12
        for r = c+1:12
            H3=[H3,Cr3(c,r)];
        end
    end
    W=[E1,H1,E2,H2,E3,H3];
   A6=[A6;W];
H1=[];
H2=[];
H3=[];
end
save(sprintf('tst8.mat'),'A6');

for i=5701:6100
    i
    file5=sprintf('timit-4 (%d).wav',i);
    x5=wavread(file5);
    tdata5=melcepst(x5,fs,'dD',12,p,n,inc,0,0.5);
    t1=tdata5(:,1:12);
    t2=tdata5(:,13:24);
    t3=tdata5(:,25:36);
    E=mean(tdata5);
    E1=E(1:12);
    E2=E(13:24);
    E3=E(25:36);
    Cr1=corr(t1);
    for c = 1:12
        for r = c+1:12
            H1=[H1,Cr1(c,r)];
        end
    end
    Cr2=corr(t2);
    for c = 1:12
        for r = c+1:12
            H2=[H2,Cr2(c,r)];
        end
    end
    Cr3=corr(t3);
    for c = 1:12
        for r = c+1:12
            H3=[H3,Cr3(c,r)];
        end
    end
    W=[E1,H1,E2,H2,E3,H3];
   A7=[A7;W];
H1=[];
H2=[];
H3=[];
end
save(sprintf('tst-4.mat'),'A7');


for i=5701:6100
    i
    file5=sprintf('timit-5 (%d).wav',i);
    x5=wavread(file5);
    tdata5=melcepst(x5,fs,'dD',12,p,n,inc,0,0.5);
    t1=tdata5(:,1:12);
    t2=tdata5(:,13:24);
    t3=tdata5(:,25:36);
    E=mean(tdata5);
    E1=E(1:12);
    E2=E(13:24);
    E3=E(25:36);
    Cr1=corr(t1);
    for c = 1:12
        for r = c+1:12
            H1=[H1,Cr1(c,r)];
        end
    end
    Cr2=corr(t2);
    for c = 1:12
        for r = c+1:12
            H2=[H2,Cr2(c,r)];
        end
    end
    Cr3=corr(t3);
    for c = 1:12
        for r = c+1:12
            H3=[H3,Cr3(c,r)];
        end
    end
    W=[E1,H1,E2,H2,E3,H3];
   A8=[A8;W];
H1=[];
H2=[];
H3=[];
end
save(sprintf('tst-5.mat'),'A8');


for i=5701:6100
    i
    file5=sprintf('timit-6 (%d).wav',i);
    x5=wavread(file5);
    tdata5=melcepst(x5,fs,'dD',12,p,n,inc,0,0.5);
    t1=tdata5(:,1:12);
    t2=tdata5(:,13:24);
    t3=tdata5(:,25:36);
    E=mean(tdata5);
    E1=E(1:12);
    E2=E(13:24);
    E3=E(25:36);
    Cr1=corr(t1);
    for c = 1:12
        for r = c+1:12
            H1=[H1,Cr1(c,r)];
        end
    end
    Cr2=corr(t2);
    for c = 1:12
        for r = c+1:12
            H2=[H2,Cr2(c,r)];
        end
    end
    Cr3=corr(t3);
    for c = 1:12
        for r = c+1:12
            H3=[H3,Cr3(c,r)];
        end
    end
    W=[E1,H1,E2,H2,E3,H3];
   A9=[A9;W];
H1=[];
H2=[];
H3=[];
end
save(sprintf('tst-6.mat'),'A9');


for i=5701:6100
    i
    file5=sprintf('timit-7 (%d).wav',i);
    x5=wavread(file5);
    tdata5=melcepst(x5,fs,'dD',12,p,n,inc,0,0.5);
    t1=tdata5(:,1:12);
    t2=tdata5(:,13:24);
    t3=tdata5(:,25:36);
    E=mean(tdata5);
    E1=E(1:12);
    E2=E(13:24);
    E3=E(25:36);
    Cr1=corr(t1);
    for c = 1:12
        for r = c+1:12
            H1=[H1,Cr1(c,r)];
        end
    end
    Cr2=corr(t2);
    for c = 1:12
        for r = c+1:12
            H2=[H2,Cr2(c,r)];
        end
    end
    Cr3=corr(t3);
    for c = 1:12
        for r = c+1:12
            H3=[H3,Cr3(c,r)];
        end
    end
    W=[E1,H1,E2,H2,E3,H3];
   A10=[A10;W];
H1=[];
H2=[];
H3=[];
end
save(sprintf('tst-7.mat'),'A10');



for i=5701:6100
    i
    file5=sprintf('timit-8 (%d).wav',i);
    x5=wavread(file5);
    tdata5=melcepst(x5,fs,'dD',12,p,n,inc,0,0.5);
    t1=tdata5(:,1:12);
    t2=tdata5(:,13:24);
    t3=tdata5(:,25:36);
    E=mean(tdata5);
    E1=E(1:12);
    E2=E(13:24);
    E3=E(25:36);
    Cr1=corr(t1);
    for c = 1:12
        for r = c+1:12
            H1=[H1,Cr1(c,r)];
        end
    end
    Cr2=corr(t2);
    for c = 1:12
        for r = c+1:12
            H2=[H2,Cr2(c,r)];
        end
    end
    Cr3=corr(t3);
    for c = 1:12
        for r = c+1:12
            H3=[H3,Cr3(c,r)];
        end
    end
    W=[E1,H1,E2,H2,E3,H3];
   A11=[A11;W];
H1=[];
H2=[];
H3=[];
end
save(sprintf('tst-8.mat'),'A11');




R=[A1;A2;A3;A4;A5;A6;A7;A8;A9;A10;A11]';
result=sim(net,R);
rslt=[zeros(1,400) ones(1,400) 2*ones(1,400) 3*ones(1,400) 4*ones(1,400) 5*ones(1,400) 6*ones(1,400) 7*ones(1,400) 8*ones(1,400) 9*ones(1,400) 10*ones(1,400)];
rst=result-rslt;
count=0;
for i=1:4400
   if(rst(i)<0.5&&rst(i)>-0.5)
       count=count+1;
   end
end
accuracy=(count/4400)*100;

cnt=0;
for i=1:4400
   if(rst(i)<1&&rst(i)>-1)
       cnt=cnt+1;
   end
end
acuracy=(cnt/4400)*100;

cunt=0;
for i=1:4400
   if(rst(i)<1.5&&rst(i)>-1.5)
       cunt=cunt+1;
   end
end
acurcy=(cunt/4400)*100;
       

