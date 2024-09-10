The goal of this exercise is to detect corners with the Harris corner detection algorithm.

cornerDetection Function 
• Function takes input from im_gray image, window size, and threshold.
• Derivatives computed using convolution and dx difference filter.
• Factors calculated using A11, A12, A21, A22.
• Harris angles calculated using formula based on difference of determinant and product of constant factor and trace square.
• Empty corners_x and corners_y cell arrays defined for each case.
• Find function used to determine row and column indices of elements in R array.
• 2x2 matrix A constructed from corresponding elements in matrices A11, A12, A21, and A22.
• Eigenvalues calculated using eig function.
• Four cases distinguished: positive, negative, positive, negative, or flat region.
• Corners' x and y coordinates stored in appropriate cell arrays.


Corners
• Selecting threshold and window.
• Reading video with VideoReader function.
• Outputting frame with readFrame.
• Converting to grayscale, double-precision image.
• Calling function by name.
• Drawing four different cases.
