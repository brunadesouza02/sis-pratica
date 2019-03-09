%comandos com filtros
%abrir imagem
[nome diretorio]=uigetfile('*.*','Abrir');
n = imread(fullfile(diretorio, nome));
%transformar imagem rgb em cinza
I = rgb2gray(n); % 2 equivale a to (para) 

%filtros canny/sobel/prewitt

%ilustrar as imagens no subplot
subplot(2,2,1); imshow(n); title('Img Entrada');

%variavel (so para ilustrar que essa variavel serve p aplicar o filtro canny):
imgcanny = edge(I, 'canny');
subplot(2,2,2); imshow(imgcanny); title('Filtro canny');

%variavel (so para ilustrar que essa variavel serve p aplicar o filtro sobel):
imgsobel = edge(I, 'sobel');
subplot(2,2,3); imshow(imgcanny); title('Filtro sobel');

%variavel (so para ilustrar que essa variavel serve p aplicar o filtro prewitt):
imgprewitt = edge(I, 'prewitt');
subplot(2,2,4); imshow(imgprewitt); title('Filtro prewitt');