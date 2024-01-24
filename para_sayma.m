videoorj=imread('D:\para.mp4'); 
figure(1),imshow(videoorj);

video=rgb2gray(videoorj); 
level=graythresh(video);
bw=im2bw(video,level);
figure(2),imshow(bw);

bw=imcomplement(bw); 
videoorj=imread('D:\para.jpg'); 
figure(3),imshow(videoorj);

video=rgb2gray(videoorj);
level=graythresh(video);
bw=im2bw(video,level);
figure(4),imshow(bw);

bw=imcomplement(bw);
figure(5),imshow(bw)
bw=imfill(bw,'holes');
bw = bwareaopen(bw,30); 
figure(6),imshow(bw);

se=strel('disk',11);
bw2=imerode(bw,se); 
figure(7),imshow(bw2);

[B,L] = bwboundaries(bw2);   length(B) 
stats = regionprops(bw2, 'Area','Centroid');
figure(8),imshow(videoorj);
    toplam = 0;
    for n=1:length(B)
        a=stats(n).Area; 
        centroid=stats(n).Centroid;
            if a> 1200
                 toplam = toplam + 1;
                 text(centroid(1),centroid(2),'1TL');
            elseif a >800 &&  a < 1050
                toplam = toplam + 0.5;
                text(centroid(1),centroid(2),'50Kr�');
            elseif a >500 &&  a < 650
                toplam = toplam + 0.25;
                text(centroid(1),centroid(2),'25Kr�');
            elseif a > 360 &&  a < 380
                toplam = toplam + 0.10;
                text(centroid(1),centroid(2),'10Kr�');
            else
                 toplam = toplam + 0.05;
                 text(centroid(1),centroid(2),'5Kr�');
        end
    end
    
     title(['Toplam para miktari = ',num2str(toplam),' TL'])
bw=imfill(bw,'holes');
bw = bwareaopen(bw,30); 
figure(6),imshow(bw);

se=strel('disk',11);
bw2=imerode(bw,se);
figure(7),imshow(bw2);

[B,L] = bwboundaries(bw2);  % length(B) 
stats = regionprops(bw2, 'Area','Centroid');
figure(8),imshow(videoorj);
    toplam = 0;
    for n=1:length(B)
        a=stats(n).Area;  
                centroid=stats(n).Centroid;
            if a> 1200
                 toplam = toplam + 1;
                 text(centroid(1),centroid(2),'1TL');
            elseif a >800 &&  a < 1050
                toplam = toplam + 0.5;
                text(centroid(1),centroid(2),'50Kr�');
            elseif a >500 &&  a < 650
                toplam = toplam + 0.25;
                text(centroid(1),centroid(2),'25Kr�');
            elseif a > 360 &&  a < 380
                toplam = toplam + 0.10;
                text(centroid(1),centroid(2),'10Kr�');
            else
                 toplam = toplam + 0.05;
                 text(centroid(1),centroid(2),'5Kr�');
        end
    end
    
     title(['Toplam para miktari = ',num2str(toplam),' TL'])
