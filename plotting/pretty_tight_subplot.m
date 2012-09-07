function ax=pretty_tight_subplot(Nh,Nw)
%Wrapper for the third party tight_subplot function that generates subplots
%with better spacing.

ax=tight_subplot(N, 1, [.025 .03],[.12 .01],[.12 0]);