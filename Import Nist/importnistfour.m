function out=importnistfour(nist)
column=[11 18];
out=nist;
for c=1:length(column);
    [a,b]=size(out);
    column(c)=column(c)+c-1;
    out2=cell(a,b+1);
    out2(:,1:(column(c)-1))=out(:,1:(column(c)-1));
    out2(:,(column(c)+2):b+1)=out(:,(column(c)+1):b);
    out=out2;
end
counter=-1;
for c=column;
    counter=counter+1;
    for i=1:length(nist);
        string=nist{i,c-counter};
        separation=string=='-';
        separation1=separation;
        for k=2:length(string)
            if separation(k-1)==1
                separation(k)=1;
            end
        end
        separation2=logical(separation-separation1);
        separation1=not(separation);
        string1=string(separation1);
        string2=string(separation2);
        try
            out{i,c}=str2num(string1(logical(isequaltoanyof(string1,'1234567890.'))));
        catch
            out{i,c}=NaN;
        end
        try
            out{i,c+1}=str2num(string2(logical(isequaltoanyof(string2,'1234567890.'))));
        catch
            out{i,c+1}=NaN;
        end
    end
end
end
