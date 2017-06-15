# Levenshtein-Distance
This function employs the dynamic programming technique to calculate the levenshtein distance between the target string and the answer string. It returns a double number as the distance, which is a string metric that specifies the minimum number of single-character edits (insertion, deletion, or substitution) required to make answer string the same as the target string. All operations (insertion, deletion, substitution) costs 1 edit.

This function has two string inputs:  target, answer
This function has one double output: distance

Format:   distance = LevenshteinDistance(target,answer)

Example:  
>> distance = LevenshteinDistance('cat','car')

distance =

     1
     
$Author: Bahar S. Shahsavarani$    $Date: 2017/06/14$
