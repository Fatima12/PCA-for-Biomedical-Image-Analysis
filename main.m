clear
clc
close all

%% load data

data = load('P3');
finger_print = data.X;

%% plot imported data

imshow(finger_print)

%% Find non-zero pixel indices

[pixel_r, pixel_c] = non_zeros_pixels(finger_print);
pixel_coords = [pixel_r'; pixel_c'];

%% mean subtraction

mean_data = mean(pixel_coords, 2);
pixels_mean_subt = pixel_coords - mean_data;

%% compute covariance and eigenvectors

pixel_coords = pixels_mean_subt;
[principal_axes, principal_values]  = cov_eig_calculate(pixel_coords);

%% project centered data onto the first two eigenvectors

pca_projection = pca_proj_func(pixel_coords, principal_axes);

%% add mean back and floor coordinates

final_restored_coords = restore_coord(pca_projection, mean_data, finger_print);

%% reconstruct transformed image

finger_print_corr = reconstruct_transformed_image(finger_print, final_restored_coords);

figure()
imshow(finger_print_corr)


