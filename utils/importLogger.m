%Bob Sherbert
%8/12/2010
%Simple script from importing primitive ACES log files
%Based on one of Matlab's autogenerated import functions

function importLogger(fileToRead1)
%IMPORTFILE(FILETOREAD1)
%  Imports data from the specified file
%  FILETOREAD1:  file to read

%  Auto-generated by MATLAB on 10-Aug-2010 17:39:21

% Import the file
newData1 = importdata(fileToRead1);
d = newData1.data;
s = size(newData1.data)

% Create new variables in the base workspace from those fields.
vars = fieldnames(newData1);
for i = 1:length(vars)
    assignin('base', vars{i}, newData1.(vars{i}));
end

style = {'r','g','b','k', 'r--','g--','b--','k--', 'r-.','g-.','b-.','k-.',...
         'r:','g:','b:','k:', 'c','m','y'}
figure;
hold;
for i = 2:s(2)
   j = i-1;
   plot( d(2:s(1),1), d(2:s(1),i), style{j} )
end
   legend(newData1.colheaders(2:s(2)));

end

