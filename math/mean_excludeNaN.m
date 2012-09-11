function avg=mean_excludeNaN(vec)
% avg=mean_excludeNaN(vec)
% Find the mean excluding NaNs
avg=mean(vec(~isnan(vec)));