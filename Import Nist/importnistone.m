function out=importnistone(nist)
out=cell(size(nist));
j=0;
for i=1:length(nist);
    if not(strcmp(nist{i,1},''))
        j=j+1;
        out(j,:)=nist(i,:);
    end
end
out=out(1:j,:);