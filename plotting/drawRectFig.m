function drawRectFig(h_axes_bl, xy_bl, h_axes_tr, xy_tr, color, alpha)
% drawRectFig(h_axes_bl, xy_bl, h_axes_tr, xy_tr)
% 
% Draw a rectangle that spans multiple axes in a single figure
%
%  h_axes_bl - handle to the axes in which the bottom left of the rectangle
%            resides
%
%  xy_bl - [x y] cooridnates of bottom left corner of rectangle with
%           respect to the axes h_ax_bl
% 
%  h_axes_tr - handle to the axes in which the top right of the rectangle
%            resides
%
%  xy_tr -  [x y] coordinates of top right corner of rectange with respect
%           to the axes h_ax_tr
%  
%  color - (optional) rectangle color in format [R G B]./255 
%
%  alpha - (optional) transparency, 0 to 1 
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
[x, y]=ds2nfu(h_axes_bl, xy_bl(1),xy_bl(2));
[x2,y2]=ds2nfu(h_axes_tr,xy_tr(1),xy_tr(2));



%Draw the rectangle (in figure units)
hrect=annotation('rectangle',[x y  x2-x y2-y]);

%Set the transparency
if exist('alpha','var')
    set(hrect,'FaceAlpha',alpha);
end


%Set the color
if exist('color','var')
    set(hrect,'FaceColor',color);
    set(hrect,'LineWidth',0);
    set(hrect,'LineStyle','none');
end


