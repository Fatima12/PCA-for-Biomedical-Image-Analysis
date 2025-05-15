function final_coord = restore_coord(pca_projection, mean_data, finger_print)

    pca_projection = pca_projection';
    final_coord = pca_projection + mean_data;
    
    % making sure coordinates within image dimensions
    final_coord = floor(final_coord);
    final_coord = max(final_coord, 1);
    final_coord(1,:) = min(final_coord(1, :), size(finger_print, 1));
    final_coord(2,:) = min(final_coord(2, :), size(finger_print, 2));


end