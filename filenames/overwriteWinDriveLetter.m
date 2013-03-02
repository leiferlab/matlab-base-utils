function newfile=overwriteWinDriveLetter(fullfile,newDriveLetter)
%newfile=overwriteWinDriveLetter(fullfile,newDriveLetter) 
%
%Swap out the drive letter for newDriveLetter
%EXAMPLE
% newfile=overwriteWinDriveLetter('F:\My\Folder\file.txt','G')
% newfile=
%       G:\My\Folder\file.txt
%
% Note if newDriveLetter is empty, the function returns the fullfile
%
% Andrew Leifer
% leifer@princeton.edu
% 7 September 2012

if isempty(newDriveLetter)
    newfile=fullfile;
else
[~,remain]=strtok(fullfile,':');
 newfile=[newDriveLetter remain];
end
end
