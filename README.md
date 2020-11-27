# BitirmeTezi

# version_1_0_0

Designer | Issue  |
---| --- |
Sercan SATICI | State-of-art Image Denoising|

İmgede Gürültü Giderme çalışmalarını kapsamaktadır. Değişiklik Kayıt: 25.11.2020

BM3D (Block Matching 3D Filtering)
BM3D.m Matlab ile açılır, seçilen "image_name" için kod çalıştırılır. AWGN gürültüsü standart sapması sigma (σ) default:25 olarak ayarlanmıştır, seçili imgeye gürültü eklenerek noisy imge oluşturulur, BM3D ile denoise işlemi gerçekleştirilir.
Input : ".jpg" , ".png" test imgeleri
Output : Noisy ve Denoised imgeler, PSNR çıktıları

DnCNN (Feed Forward Denoising Convolutional Neural Network)
DnCNN Derinliği dışardan ayarlanabilir (default:17), katmanların Conv+ReLu, Conv+BN+ReLu şeklinde ilerlediği mimari oluşturulur.Model eğitilirken ".hdf5" uzantılı dosyaya kayıtlanarak, dosyanın taranıp en son kaldığı noktayı epoch başlangıcı yapması sağlanır. Eğitim Veri Setinin Oluşturulması 'datagenarator' kütüphanesi kullanılarak (data_genarator.py), veri arttırma (data augmentation) yapılır. "sigma" değerli AWGN gürültüsü imgeye eklenerek cleaned imge ve noisy imge döndürülür. Learning rate Adaptif olarak öğrenme hızı (learnin rate) "lr" ayarlanması yapılır. İlk 30 epoch için başlangıç 'lr' değeri kullanılırken, 30-60 epochlarında, 60-80 ve 80-epoch aralıklarında öğrenme hızı azaltılmaktadır.

Eğitim için main_train.py çalıştırılır.
Test için main_test.py çalıştırılır.

Kütüphaneler :tensorflow, keras2, numpy, opencv
Dizin : 
/data/Test/Set12
/data/Test/Set68
/data/Train400
/models/DnCNNsigma25
/results/
Dosyalar : data_generator.py, main_test.py, main_train.py
