rgb=imread('C:\Users\Muhammet\Downloads\Compressed\uzaktan_algilama_files\original.tiff');
pan=imread('C:\Users\Muhammet\Downloads\Compressed\uzaktan_algilama_files\pan.tiff');
orgim=imread('C:\Users\Muhammet\Downloads\Compressed\uzaktan_algilama_files\original.tiff');


hsi=rgbtohsiNew(rgb);

i2=imhistmatch(pan,hsi(:,:,3));
i2=im2double(i2);
son=zeros(150,150,3);
son(:,:,3)=i2;
son(:,:,1:2)=hsi(:,:,1:2);

son=hsitorgbNew(son);
son2=im2uint8(son);
figure, imshow(son2);
figure, imshow(orgim);
psnr2=psnr(son2,orgim)
