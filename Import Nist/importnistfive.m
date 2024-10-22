function out=importnistfive(nist)
out=nist;
for j=[7 8 9]
for i=1:length(nist);
    try
    out{i,j}=str2num(nist{i,j});
    catch
        out{i,j}=NaN;
    end
end
end