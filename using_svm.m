clc;
clear all;
close all;
T1=importdata(sprintf('S_T_O.mat'));
T2=importdata(sprintf('S_T_O_P_5.mat'));
T3=importdata(sprintf('S_T_O_P_8.mat'));
T4=importdata(sprintf('S_T_O_P5.mat'));
T5=importdata(sprintf('S_T_O_P8.mat'));
L1=[T1;T2];
L2=[T1;T3];
L3=[T1;T4];
L4=[T1;T5];
save(sprintf('T11'),'L1');
save(sprintf('T12'),'L2');
save(sprintf('T13'),'L3');
save(sprintf('T14'),'L4');
count1=0;
count2=0;
count3=0;
count4=0;
train_label=[zeros(1,5300) ones(1,5300)];
SVMStruct1=svmtrain(L1,train_label,'kernel_function','rbf','rbf_sigma',16); 
SVMStruct2=svmtrain(L2,train_label,'kernel_function','rbf','rbf_sigma',16);
SVMStruct3=svmtrain(L3,train_label,'kernel_function','rbf','rbf_sigma',16);
SVMStruct4=svmtrain(L4,train_label,'kernel_function','rbf','rbf_sigma',16);
for i=1:80
    i
    Test1=importdata(sprintf('S_Test_O_P_5(%d).mat',i));
% train_label=[zeros(1,5300) ones(1,5300)];
% SVMStruct1=svmtrain(L1,train_label,'kernel_function','rbf','rbf_sigma',16); 
% SVMStruct2=svmtrain(L2,train_label,'kernel_function','rbf','rbf_sigma',16);
% SVMStruct3=svmtrain(L3,train_label,'kernel_function','rbf','rbf_sigma',16);
% SVMStruct4=svmtrain(L4,train_label,'kernel_function','rbf','rbf_sigma',16);
G1=svmclassify(SVMStruct1,Test1);
G2=svmclassify(SVMStruct2,Test1);
G3=svmclassify(SVMStruct3,Test1);
G4=svmclassify(SVMStruct4,Test1);
C1=sum(G1);
C2=sum(G2);
C3=sum(G3);
C4=sum(G4);
if(C1>C2&C1>C3&C1>C4)
    count1=count1+1;
end
end
for i=1:80
    i
    Test1=importdata(sprintf('S_Test_O_P_8(%d).mat',i));
% train_label=[zeros(1,5300) ones(1,5300)];
% SVMStruct1=svmtrain(L1,train_label,'kernel_function','rbf','rbf_sigma',16); 
% SVMStruct2=svmtrain(L2,train_label,'kernel_function','rbf','rbf_sigma',16);
% SVMStruct3=svmtrain(L3,train_label,'kernel_function','rbf','rbf_sigma',16);
% SVMStruct4=svmtrain(L4,train_label,'kernel_function','rbf','rbf_sigma',16);
G1=svmclassify(SVMStruct1,Test1);
G2=svmclassify(SVMStruct2,Test1);
G3=svmclassify(SVMStruct3,Test1);
G4=svmclassify(SVMStruct4,Test1);
C1=sum(G1);
C2=sum(G2);
C3=sum(G3);
C4=sum(G4);
if(C2>C1&C2>C3&C2>C4)
    count2=count2+1;
end
end
for i=1:80
    i
    Test1=importdata(sprintf('S_Test_O_P5(%d).mat',i));
% train_label=[zeros(1,5300) ones(1,5300)];
% SVMStruct1=svmtrain(L1,train_label,'kernel_function','rbf','rbf_sigma',16); 
% SVMStruct2=svmtrain(L2,train_label,'kernel_function','rbf','rbf_sigma',16);
% SVMStruct3=svmtrain(L3,train_label,'kernel_function','rbf','rbf_sigma',16);
% SVMStruct4=svmtrain(L4,train_label,'kernel_function','rbf','rbf_sigma',16);
G1=svmclassify(SVMStruct1,Test1);
G2=svmclassify(SVMStruct2,Test1);
G3=svmclassify(SVMStruct3,Test1);
G4=svmclassify(SVMStruct4,Test1);
C1=sum(G1);
C2=sum(G2);
C3=sum(G3);
C4=sum(G4);
if(C3>C2&C3>C1&C3>C4)
    count3=count3+1;
end
end
for i=1:80
    i
    Test1=importdata(sprintf('S_Test_O_P8(%d).mat',i));
% train_label=[zeros(1,5300) ones(1,5300)];
% SVMStruct1=svmtrain(L1,train_label,'kernel_function','rbf','rbf_sigma',16); 
% SVMStruct2=svmtrain(L2,train_label,'kernel_function','rbf','rbf_sigma',16);
% SVMStruct3=svmtrain(L3,train_label,'kernel_function','rbf','rbf_sigma',16);
% SVMStruct4=svmtrain(L4,train_label,'kernel_function','rbf','rbf_sigma',16);
G1=svmclassify(SVMStruct1,Test1);
G2=svmclassify(SVMStruct2,Test1);
G3=svmclassify(SVMStruct3,Test1);
G4=svmclassify(SVMStruct4,Test1);
C1=sum(G1);
C2=sum(G2);
C3=sum(G3);
C4=sum(G4);
if(C4>C2&C4>C3&C4>C1)
    count4=count4+1;
end
end
count=count1+count2+count3+count4;
accuracy=(count/320)*100;



















