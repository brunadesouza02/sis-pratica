%comandos com imagens coloridas
%abrir imagem
[nome diretorio]=uigetfile('*.*','Abrir');
n = imread(fullfile(diretorio, nome));

figure(1);
%ilustrar as imagens no subplot
subplot(2,2,1); imshow(n); title('Img Entrada');

%apresenta apenas o componente vermelho da imagem - R
subplot(2,2,2); imshow(n(:,:,1)); title('Img R');

%apresenta apenas o componente verde da imagem - G
subplot(2,2,3); imshow(n(:,:,2)); title('Img G');

%apresenta apenas o componente azul da imagem - B
subplot(2,2,4); imshow(n(:,:,3)); title('Img B');


%tipos de dados uint8
%zeros pq ela é inicialmente preta
%size pq tem as mesmas dimensões
b_R = uint8(zeros(size(n)));
b_G = uint8(zeros(size(n)));
b_B = uint8(zeros(size(n)));

%atribui o primeiro plano da imagem original 
%ao primeiro plano da imagem b_R, b_G, b_B 
b_R(:,:,1) = n(:,:,1);
b_G(:,:,2) = n(:,:,2);
b_B(:,:,3) = n(:,:,3);

figure(2);
%apresentar os subplots da mesma forma, mas agora em cor
%ilustrar as imagens no subplot
subplot(2,2,1); imshow(n); title('Img colorida');

%apresenta apenas o componente vermelho da imagem - R
subplot(2,2,2); imshow(b_R); title('Img R');

%apresenta apenas o componente verde da imagem - G
subplot(2,2,3); imshow(b_G); title('Img G');

%apresenta apenas o componente azul da imagem - B
subplot(2,2,4); imshow(b_B); title('Img B');
