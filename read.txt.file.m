fid=fopen('H:\Repositories\ScreenLatencyTests\Logfiles\BUSCHLAB1_31-Aug-2018.txt');
cdata=textscan(fid,'%f %f %f %f %f',200,'delimiter',' ', 'HeaderLines',1);
fclose(fid);

Data  = cat(2, cdata{1}, cdata{2},cdata{3},cdata{4},cdata{5});


fid=fopen('H:\Repositories\ScreenLatencyTests\Logfiles\BUSCHLAB1_31-Aug-2018.txt');