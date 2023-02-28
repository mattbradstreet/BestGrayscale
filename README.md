# BestGray

A MATLAB function that takes an RGB image and returns the grayscale image with the best contrast. The program separates the RGB channels from the input image, and iterates through the different RGB weight combinations, computing the root-mean-square (RMS) contrast value of the grayscale image for each combination. It then selects the weight combination that results in the highest contrast and applies it to the RGB channels to produce the final grayscale image.


<h1 style="font-size: 6px;">Input</h1>

Im - the input image to be converted


<h1 style="font-size: 6px;">Output</h1>

ImG - the returned grayscale image with the best RMS contrast value


<h1 style="font-size: 6px;">Example Usage</h1>

% Load RGB image
RGB = imread('road.tiff');

% Convert to grayscale using BestGray function
gray = BestGray(RGB);

% Display images
subplot(1,2,1), imshow(RGB), title('Original')
subplot(1,2,2), imshow(gray), title('Grayscale')


<h1 style="font-size: 6px;">Author</h1>

This program was written by Matt Bradstreet.


<h1 style="font-size: 6px;">Version History</h1>

1.0 - Initial Release
