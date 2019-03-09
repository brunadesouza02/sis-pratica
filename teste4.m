%comandos para tirar negativos da imagem
%abrir imagem
[nome diretorio]=uigetfile('*.*','Abrir');
n = imread(fullfile(diretorio, nome));

%tranformar valores proximos de 0(perto do preto) em valores proximos 
%de 255 (preto do branco) e vice-versa.
%uma forma de fazer isso é subtrair 255 da img e dps multiplicar por -1
y = uint8(-1*(double(n)-255));
subplot(331); imshow(n); title('Imagem de entrada');
subplot(332); imshow(y); title('Negativo');

%aumentando e reduzindo o brilho
%para deixar a imagem mais clara, soma uma constante a imagem
z = n + 100;
subplot(333); imshow(z); title('Brilho aumentado');
t = n - 100;
subplot(334); imshow(t); title('Brilho reduzido');


%aumentando e reduzindo o cantraste 
%para aumentar o contraste, deixamos as cores claras mais claras
%e as cores escuras mais escuras;
%para isso, definimos um limiar
limiar = 200;

%o resultado da divisão:
%numero entre 0 e 1 = p valores de x menores que 180
%numeros maiores que 1, p valores maiores que 180
img = double(n)/limiar;
b = img.^3;

%esta operação faz com que os valores maiores que 1 fiquem ainda maiores
%e os valores menores que 1 ainda menores. Assim, concluimos multiplicando
%os valores pelo limiar e convertendo os dados p uint8.
c = uint8(b*limiar);
subplot(224); imshow(c); title('Aumento do contraste');



limiar = 200;

%o resultado da divisão:
%numero entre 0 e 1 = p valores de x menores que 180
%numeros maiores que 1, p valores maiores que 180
img = double(n)/limiar;
b = img.^3;

%esta operação faz com que os valores maiores que 1 fiquem ainda maiores
%e os valores menores que 1 ainda menores. Assim, concluimos multiplicando
%os valores pelo limiar e convertendo os dados p uint8.
c = uint8(b*limiar);
subplot(224); imshow(c); title('Aumento do contraste');
