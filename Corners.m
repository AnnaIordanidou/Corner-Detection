% window size and threshold 
windowSize = 3;
threshold = 1;


% frame
videoReader = VideoReader('video1 (1).avi');
im = readFrame(videoReader);
im_gray = im2double(rgb2gray(im));

[corners_x, corners_y] = cornerDetection (im_gray, windowSize, threshold);

figure;

subplot(2,2,1)
imshow(im);
hold on;
scatter(corners_x{1}, corners_y{1}, 'r');
title('Case 1: Both eigenvalues positive')

subplot(2,2,2)
imshow(im);
hold on;
scatter(corners_x{2}, corners_y{2}, 'r');
title('Case 2: One eigenvalue positive, one negative')

subplot(2,2,3)
imshow(im);
hold on;
scatter(corners_x{3}, corners_y{3}, 'r');
title('Case 3: One eigenvalue negative, one positive')

subplot(2,2,4)
imshow(im);
hold on;
scatter(corners_x{4}, corners_y{4}, 'r');
title('Case 4: Eigenvalues small')


