function out=importnist(nist)
out=importnistseven(importnistsix(importnistfive(importnistfour(importnistthree(importnisttwo(importnistone(nist)))))));
check=cell2mat(out(:,2));
check1=check==1;
check2=check==2;
check3=check==3;
mode='vacuum';
switch mode
    case 'vacuum'
        nistvac1=out(check1,:);
        nistvac2=out(check2,:);
        nistvac3=out(check3,:);
        save('C:\Users\Jitse\Documents\MATLAB\nistvac1.mat','nistvac1')
        save('C:\Users\Jitse\Documents\MATLAB\nistvac2.mat','nistvac2')
        save('C:\Users\Jitse\Documents\MATLAB\nistvac3.mat','nistvac3')
    case 'air'
        nistair1=out(check1,:);
        nistair2=out(check2,:);
        nistair3=out(check3,:);
        save('C:\Users\Jitse\Documents\MATLAB\nistair1.mat','nistair1')
        save('C:\Users\Jitse\Documents\MATLAB\nistair2.mat','nistair2')
        save('C:\Users\Jitse\Documents\MATLAB\nistair3.mat','nistair3')
end