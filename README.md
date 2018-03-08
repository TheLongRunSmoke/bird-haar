# ����������� ����� ������ ��� ���������� ������� �����

### �������������

1. �������� [��������� �����](https://github.com/TheLongRunSmoke/bird-haar/releases) �������������� �������.
2. ��������������� �� CascadeClassifier.
```python
cascade = cv2.CascadeClassifier('cascade_226.xml')
```

### �������� �������

**1.** �������������
```
opencv_createsamples -vec traning.vec -info positive\desc.txt -bg neg_desc.txt -w 24 -h 24
```

**2.** ����������
```
opencv_traincascade -data cascade -vec traning.vec -bg negative/desc.txt 
    -numPos 180 -numNeg 60 -numStages 30 -featureType HAAR -w 24 -h 24
    -minHitRate 0.995 -maxFalseAlarmRate 0.2 
    -precalcValBufSize 1024 -precalcValBufSize 1024 -numThreads 4
```

### ���������

�� ������ ������������ ��� ��������������. ��������, ����������� ���������� OpenCV.
```
opencv_annotation --annotations=positive\desc.txt --images=positive\img\
opencv_annotation --annotations=negative\desc.txt --images=negative\img\
``` 

### ������� ���������

**08.03.2018** 226 ������������� � 72 ������������� ������.

**14.02.2018** 114 ������������� � 20 ������������� �������.
