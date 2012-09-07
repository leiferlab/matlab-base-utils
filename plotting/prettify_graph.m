function prettify_graph(h_axis,h_title,h_line,h_xlabel,h_ylabel)
% prettify_graph(h_axis,h_title,h_line,h_xlabel,h_ylabel)
% Makes graphs pretty by using Andy's preferred default font sizes etc.
%
% h_axis - (optional) handle to an axis, e.g. as returned by `subplot'. If
%                      no axis is specified, assumes current axes
% h_title - (optional) handle to title, e.g. as returned by `title'
% h_line - (optional) handle to a line , e.g. as returned by `plot'
% h_xlabel - (optional) handle to a label, e.g. as returned by xlabel
% h_ylabel - (optional)  handle to a label, e.g. as returned by ylabel
%
%
% Andrew Leifer
% leifer@princeton.edu
% 7 September 2012



    %if an axis handle was passed but it is somehow empty, get the current axes   
    if exist('h_axis','var')
       if isempty(h_axis)
            h_axis=get(gcf,'CurrentAxes');
       else
           %If the handle exists and is not empty, then use it.
       end
    else %if no handle was passed in, get the current axis
        h_axis=get(gcf,'CurrentAxes');
    end
   
    %if the axis isn't empty, then proceed
    if ~isempty(h_axis)
        %get the parent figure of the axis
        h_figure=ancestor(h_axis,'figure');
        
       %Make sure we have a valid figure too
        if ~isempty(h_figure) 
            set(h_figure,'Color',[1 1 1]); %make figure background white        


            %Axis Prettification
            set(h_axis,'Box','off'); %turn off annoying box
            set(h_axis,'FontSize',12.0); %Set the font to be 12 pt
            set(h_axis,'YTickLabelMode','auto');%Make sure the y tick labels show up
            set(h_axis,'XTickLabelMode','auto');%Make sure the x tick labels show up

            %Title Prettification
            if exist('h_title','var')
                if ~isempty(h_title)
                    set(h_title,'VerticalAlignment','top'); %Position the title inside the plot
                    set(h_title,'FontSize',14); %increase the font of the title
                end
            end

            %Label Prettification
            if exist('h_ylabel','var')
                if ~isempty(h_ylabel)
                    set(h_ylabel,'FontSize',14); %Increase the font of the x label
                end
            end
            if exist('h_xlabel','var')
                if ~isempty(h_xlabel)
                    set(h_xlabel,'FontSize',14); %increase the font of the y label
                end
            end


            %Line Prettification
            if exist('h_line','var')
                set(h_line,'LineWidth',2.5); %Increase the width of the line
            end
        end
    end
    
end
