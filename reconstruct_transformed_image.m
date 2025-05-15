function finger_print_corr = reconstruct_transformed_image(finger_print, final_restored_coords)

    finger_print_corr = zeros(size(finger_print));
    for i = 1:length(final_restored_coords)
        finger_print_corr(final_restored_coords(1,i), final_restored_coords(2,i)) = 1;
    end

end