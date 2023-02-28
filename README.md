# BestGray

A MATLAB function that takes an RGB image and returns the grayscale image with the best contrast. The program separates the RGB channels from the input image, and iterates through the different RGB weight combinations, computing the root-mean-square (RMS) contrast value of the grayscale image for each combination. It then selects the weight combination that results in the highest contrast and applies it to the RGB channels to produce the final grayscale image.


<h1 style="font-size: 6px;">Input</h1>

Im - the input image to be converted


<h1 style="font-size: 6px;">Output</h1>

ImG - the returned grayscale image with the best RMS contrast value


<h1 style="font-size: 6px;">Example Usage</h1>

```
% Load RGB image
RGB = imread('road.tiff');

% Convert to grayscale using BestGray function
gray = BestGray(RGB);

% Display images
subplot(1,2,1), imshow(RGB), title('Original')
subplot(1,2,2), imshow(gray), title('Grayscale')
```
Original Input Image

<img src="https://user-images.githubusercontent.com/67870363/221874109-b0f82e45-05e6-473d-a096-37c3b21a5f01.jpg" width=300 height=250>

Grayscale Output Image

<img src="https://user-images.githubusercontent.com/67870363/221875094-c7a2efa9-e7f1-458a-8489-559a3cb3511c.jpg" width=300 height=250>


<h1 style="font-size: 6px;">Author</h1>

This program was written by Matt Bradstreet.


<h1 style="font-size: 6px;">Version History</h1>

1.0 - Initial Release
