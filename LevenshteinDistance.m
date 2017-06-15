function distance = LevenshteinDistance(target,answer)
% This function employs the dynamic programming technique to calculate the 
% levenshtein distance between the target string and the answer string. It
% returns a double number as the distance, which is a string metric that
% specifies the minimum number of single-character edits
% (insertion, deletion, or substitution) required to make answer string the
% same as the target string. All operations 
% (insertion, deletion, substitution) costs 1 edit.

% This function has two string inputs:  target, answer
% This function has one double output: distance
% Format:   [distance] = LevenshteinDistance(target,answer)
%
% Example:  distance = LevenshteinDistance('næp','n?k')

%          distance =

%               2

% $Author: Bahar S. Shahsavarani$    $Date: 2017/06/14$

targetLength = length(target);
answerLength = length(answer);

% distance table
distanceTable = zeros(answerLength+1,targetLength+1);

% initialize the distance table
distanceTable(1,:) = 0:targetLength;
distanceTable(2:end,1) = 1:answerLength;

for j = 1:targetLength
    
    for i = 1:answerLength
        
        if strcmp(answer(i),target(j))
            distanceTable(i+1,j+1) = distanceTable(i,j);
        else
            distanceTable(i+1,j+1) = min(min((distanceTable(i,j) + 1),...
                (distanceTable(i,j+1)+1)),(distanceTable(i+1,j)+1));
        end
        
    end % end of the answer string
    
end % end of the target string

distance = distanceTable(end,end);

