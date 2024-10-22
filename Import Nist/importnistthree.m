function out=importnistthree(nist)
out=nist;
a=length(out);
for i=1:a;
    if isempty(out{i,4})
        out{i,4}=NaN;
    else
        out{i,4}=str2num(out{i,4}(not(isequaltoanyof(out{i,4},' ''(*+-;CFISbehlor{|}'))));
    end
    if isempty(out{i,5})
        out{i,5}=NaN;
    else
        out{i,5}=str2num(out{i,5}(not(isequaltoanyof(out{i,5},' ''(*+-;CFISbehlor{|}'))));
    end
end
end