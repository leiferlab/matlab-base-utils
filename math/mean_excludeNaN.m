function avg=mean_excludeNaN(vec)
% avg=mean_excludeNaN(vec)
% Find the mean excluding NaNs


if isempty(vec)
    avg=[];
    return;
end

if ndims(vec)>2 
    error('Error: mean_excludNaN can only handle two dimensional matrices ');
end


%If we have a  matrix find the mean of each column
if all(size(vec)>1)
    avg=NaN*ones(1,size(vec,2)); %pre allocate
    for k=1:size(vec,2)
        tempVec=vec(:,k); % for each column
        avg(1,k)=mean(tempVec(~isnan(tempVec)));
    end
    
else %if we have a single row or column vector or a single point
    avg=mean(vec(~isnan(vec))); 
end

