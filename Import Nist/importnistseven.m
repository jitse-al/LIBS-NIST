function out=importnistseven(nist)
column6=nist(:,6);
column7=cell(size(column6));
for i=1:length(column6)
    string=column6{i};
    value=NaN;
    stopnumber=1;
    for j=1:length(string);
        a=str2num(string(1:j));
        if not(isempty(a))
            if isreal(a)
                value=a;
                stopnumber=j+1;
            end
        end
    end
    column6{i}=value;
    try
        column7{i}=string(stopnumber:length(string));
    catch
        column7{i}='';
    end
end
[a,b]=size(nist);
out=cell(a,b+1);
out(:,6)=column6;
out(:,7)=column7;
out(:,1:5)=nist(:,1:5);
out(:,8:b+1)=nist(:,7:b);
end