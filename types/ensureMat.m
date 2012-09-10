function mat=ensureMat(object)
%function mat=ensureMat(object)
% 
% Ensures that the object is of type matrix. If the object is a cell, it 
% converts the cell to a mtraix

if iscell(object)
 mat=cell2mat(object);
else

 mat=object;
end
