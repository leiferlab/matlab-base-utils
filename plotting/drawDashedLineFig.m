function drawDashedLine(h_axes1, xy1, h_axes2, xy2,LineWidth)
% drawDashedLine(h_axes1, xy1, h_axes2, xy2,LineWidth)
% 
% Draw a dashed line that spans multiple axes in a single figure
%
%  h_axesl - handle to the 1st axes 
%
%  xyl - [x y] cooridnates of line endpoint in first axes
% 
%  h_axes2- handle to the 2md axes 
%
%  xy2 -  [x y] coordinates of line endpoint in second axes 
%
%  LineWidth - (optional) Line Width in Pixels
% 
%
%    EXAMPLE:
%
%         figure;
%         ax1=subplot(2,1,1);
%         plot(1:10)
%         ax2=subplot(2,1,2);
%         plot(-10:1)
%         drawRectFig(ax2, [2,-10], ax1, [7 10], [255 0 0]./255, .5)
%
% Andrew Leifer
% leifer@princeton.edu
% 7 September 2012


%First make sure we have the ds2nfu script installed
% http://www.mathworks.com/matlabcentral/fileexchange/10656-data-space-to-figure-units-conversion
assert(exist('ds2nfu','file')==2,'Error: This function depends on the ds2fnu script, available at http://www.mathworks.com/matlabcentral/fileexchange/10656-data-space-to-figure-units-conversion')


%Convert from axes units to figure units
[x, y]=ds2nfu(h_axes1, xy1(1),xy1(2));
[x2, y2]=ds2nfu(h_axes2, xy2(1),xy2(2));

assert(x>=0 && y>=0, 'coordinates seem to fall off the figure');
%Draw the rectangle (in figure units)
hline=annotation('line',[x x2],[y y2]);


%Make the line dashed
set(hline,'LineStyle','--');

%Set the LineWidth
if exist('LineWidth','var')
    set(hline,'LineWidth',LineWidth);
end
