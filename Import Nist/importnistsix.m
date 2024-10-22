function out=importnistsix(nist)
out=nist;
for h=[10 13:18 21:23];
    for i=1:length(nist);
        string=nist{i,h};
        check=string==' ';
        check2=zeros(size(check));
        for j=3:length(check);
            if sum(check(j-2:j))==3
                check2(j-2:j)=[1 1 1];
            end
        end
        out{i,h}=string(not(logical(check2)));
    end
end
end
            