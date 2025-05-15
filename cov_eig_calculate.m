function [principal_axes, principal_values]  = cov_eig_calculate(pixel_coords)

    sample_covariance = pixel_coords * pixel_coords' / (length(pixel_coords) - 1);  %Sample covariance matrix
    [principal_axes, principal_values] = eigs(sample_covariance); 

end