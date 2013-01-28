function standev=std_excludeNaN(vec)
% standev=std_excludeNaN(vec)
% Find the standard deviation via "std" excluding NaNs


if isempty(vec)
    error('Error! vec is empty');
end

if ndims(vec)>2 
    error('Error: mean_excludNaN can only handle two dimensional matrices ');
end


%If we have a  matrix find the std of each column
if all(size(vec)>1)
    standev=NaN*ones(1,size(vec,2)); %pre allocate
    for k=1:size(vec,2)
        tempVec=vec(:,k); % for each column
        standev(1,k)=std(tempVec(~isnan(tempVec)));
    end
    
else %if we have a single row or column vector or a single point
    standev=std(vec(~isnan(vec))); 
end

