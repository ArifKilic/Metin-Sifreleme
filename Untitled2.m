metin=fopen('veri_projesi.txt');
metin1 = fread(metin);
fclose(metin);

for b=0:size(metin1)
    sifreli=log(metin1);
    sifreli_2=sqrt(sifreli);
    
end

sifreli_dosya=fopen('sifrelenmis_veri_son.txt','wt+');

for b=0:size(metin1)
    fprintf(sifreli_dosya,'%f \n',sifreli_2);
end

fclose(sifreli_dosya);

for b=0:size(metin1)
   cozulmus_2=(sifreli_2.^2);
   cozulmus_metin=(2.718281828.^cozulmus_2);
end

cozulmus_metin=uint8(cozulmus_metin);
son=char(cozulmus_metin);




