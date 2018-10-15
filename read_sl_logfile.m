function [data] = read_sl_logfile(filepath,reps)

fid=fopen(filepath);
cdata=textscan(fid,'%f %f %f %f %f %f',reps,'delimiter',' ', 'HeaderLines',1);
fclose(fid);

data  = cat(2, cdata{1}, cdata{2},cdata{3},cdata{4},cdata{5},cdata{6});

