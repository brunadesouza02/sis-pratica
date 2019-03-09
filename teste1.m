%comandos subplot/imhist/histeq
%abrir imagem
[nome diretorio]=uigetfile('*.*','Abrir');
n = imread(fullfile(diretorio, nome));

%transformar imagem rgb em cinza
I = rgb2gray(n); % 2 equivale a to (para) 
%realizar equalização
Eq = histeq(I);
%ilustrar as imagens no subplot
subplot(2,2,1); imshow(n); title('Img Entrada');
subplot(2,2,2); imshow(Eq); title('Img Equalizada');
subplot(2,2,3); imhist(I); title('Histograma da img de ent');
subplot(2,2,4); imhist(Eq); title('Histograma da img equal.');

%outra forma (melhor de entender)
%[nome diretorio]=uigetfile('*.*','Abrir');
%local = fullfile(diretorio, nome);
%n = imread(local);