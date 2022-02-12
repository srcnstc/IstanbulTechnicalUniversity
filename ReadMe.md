# Master Thesis, Image Denoising with Deep Learning

# version 1.0.0
It covers the Noise Removal in Image project. Change Registration: 27.11.2020

Designer | Subject  |
---| --- |
Sercan SATICI | State-of-art Image Denoising|


Method | Definition  |
---| --- |
BM3D (Block Matching 3D Filtering)| BM3D.m is opened with Matlab, the code is run for the selected "image_name". AWGN noise standard deviation sigma (σ) is set to default:25, noisy image is created by adding noise to the selected image, denoise is performed with BM3D.|
Input | ".jpg" , ".png" test images|
Output | Noisy ve Denoised images, PSNR outputs|

Method | Definition  |
---| --- |
DnCNN (Feed Forward Denoising Convolutional Neural Network)| DnCNN Depth can be adjusted externally (default: 17), an architecture is created in which the layers progress in the form of Conv+ReLu, Conv+BN+ReLu. While the model is being trained, it is saved in the file with the extension ".hdf5", so that the file is scanned and the epoch starts from the last point. Creating the Training Data Set By using the 'datagenarator' library (data_genarator.py), data augmentation is done. The cleaned image and noisy image are returned by adding the "sigma" valued AWGN noise to the image. Learning rate Adaptive learning rate (lr) is adjusted. While the initial 'lr' value is used for the first 30 epochs, the learning rate is reduced at 30-60 epochs, 60-80 and 80-epoch intervals.|
Training| main_train.py run.|
Test| main_test.py run.|
Libraries| tensorflow, keras2, numpy, opencv|
Files| data_generator.py, main_test.py, main_train.py|
Path  | Directoies|
/data/ |/Test/Set68|
/data/ |/Train400|
models |/DnCNNsigma25|
results|/LossLogs.xlsx|
