function PSNRval = PSNR(original,out)
%calculating psnr   
mse = mean(mean((im2double(original) - im2double(out)).^2, 1), 2);
PSNRval = 10 * log10(1 ./ mean(mse,3));
%link from where these lines were referred
%psnr calculation https://stackoverflow.com/questions/16264141/power-signal-noise-ratio-psnr-of-colored-jpeg-image
