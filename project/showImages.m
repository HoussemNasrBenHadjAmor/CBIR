function showImages (top_similar_indices,database_dir,database_files,nImages)

for i = 1:nImages
    % Display image name
    img_name = database_files(top_similar_indices(i)).name;
    disp(['Image: ', img_name]);
    
    % Read and display image
    img_path = fullfile(database_dir, img_name);
    img = imread(img_path);
    subplot(1, nImages, i);
    imshow(img);
    title(['Img ', num2str(i)]);
    % save img into file
    %output_file = fullfile(output_dir, ['Retrieved_Image_', num2str(i), '.tif']);
    %imwrite(img, output_file);
    % Calculate and display similarity distance
    %current_image_features = wavefeat_asd(img_path, nlevels);
    %distance = sum((input_image_features - current_image_features).^2);
    %disp(['Similarity Distance to Original: ', num2str(distance)]);
end