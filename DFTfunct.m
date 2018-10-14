function DFTofimage = DFTfunct(image,m,n)
%calculating DFT 
wM        = zeros(m, m);
wN        = zeros(n, n);

for u = 0 : (m - 1)
    for x = 0 : (m - 1)
        wM(u+1, x+1) = exp(-2 * pi * 1i / m * x * u);
    end    
end

for v = 0 : (n - 1)
    for y = 0 : (n - 1)
        wN(y+1, v+1) = exp(-2 * pi * 1i / n * y * v);
    end    
end
F1 = wM * image * wN;
DFTofimage=fftshift(F1);
% link from where it was referred
%https://stackoverflow.com/questions/27315076/writing-own-fft2-function-on-matlab