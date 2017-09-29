fid = fopen('test.txt','w+');
uiopen('test.txt',1);


for ( i = 1 : 100 ) 
    fprintf(fid,'%d\n',i);
    pause(1);
end