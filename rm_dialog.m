function [output] = rm_dialog(name, prompt, default_values, output_names, output_spec, fieldlength)
%%%%% Information
% 
%%% Required Input:
% 
% name: Name written on top of the dialog field, e.g. "Dialog Field 1"
% prompt: Array of characters specifying the required input for each
% field, e.g. "Insert value here:"
% default_values: Array of characters and numerics which will be displayed
% as default values for each field, e.g. "1".
% output_names = Array specifying the name of the variables the value
% should be stored in
% output_spec = Array with 'n' or 'c' specifying in which format the given
% answer should be stored
% fieldlength = Maximum characters for each field
% 
%%% Output:
% 
% output: Structure of the length of the input variable "name" in which all
% answers will be stored in variables with names specified in output_names
% and in the format specified in output_spec
%%% Important Note:
% All arrays need to be of same size except name & fieldlength (which only
% require a single value / character).
% 
% 
%%% Example:
% 
% 
% prompt = {'Enter Var1','Enter Var2'};
% output_names = {'Var1','Var2'};
% default_values = {'1';'Condition'};
% output_spec = {'n','c'};
% fieldlength = 30;
% name = 'Test';
% [output] = rm_dialog(name, prompt, default_values, output_names, output_spec, fieldlength);

try
% Get number of required fields and setting up a vector for n times fields
% of specified length fieldlength
n = length(prompt);
fields = repmat([1 fieldlength],n, 1);

% Show Dialog and save answers in tmp
[tmp] = inputdlg(prompt,name,fields,default_values);

% Create empty output structure

output = struct();

% Convert answers to required format specified in output_spec and write
% them into output structure with the name specified in output_names

for ii = 1:n
    if strcmp(output_spec(ii), 'n') == 1
        output.(char(output_names(ii))) = str2num(tmp{ii});
    elseif strcmp(output_spec(ii), 'c') == 1
        output.(char(output_names(ii))) = tmp{ii};
    end
end

catch
    rethrow(lasterror)
end

end
