function pca_projection = pca_proj_func(pixel_coords, principal_axes)

    pca_projection = pixel_coords' * -[principal_axes(:,1) principal_axes(:,2)];

end