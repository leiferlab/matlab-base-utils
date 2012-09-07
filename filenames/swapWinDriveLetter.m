function newfile=swapWinDriveLetter(fullfile,newDriveLetter)
%Swap out the drive letter for newDriveLetter
%EXAMPLE
% newfile=swapWinDriveLetter('F:\My\Folder\file.txt','G')
% newfile=
%       G:\My\Folder\file.txt
%
% Andrew Leifer
% leifer@princeton.edu
% 7 September 2012

[~,remain]=strtok(fullfile);
 newfile=[newDriveLetter remain];
end