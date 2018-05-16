# Размеченный набор данных для тренировки каскада Хаара

Назначение - быстрый поиск птиц на снимке. До 20 кадров в секунду при разрешении 640x480 на RPi3.

# Примеры:
Видео

[![Видео](https://i.imgur.com/c7S0gsY.jpg)](https://www.youtube.com/watch?v=Owwb3AKKIiY "Birds tracking algorithm test
")

Множественное распознавание
![Фото](https://pp.userapi.com/c846123/v846123267/e8d7/809mp2ssOjQ.jpg)

<a href="https://vk.com/mrworf_birdfeeder" target="_blank">Ещё примеры</a>

### Использование

1. Скачайте [последний релиз](https://github.com/TheLongRunSmoke/bird-haar/releases) тренированного каскада.
2. Инициализируйте им CascadeClassifier.
```python
cascade = cv2.CascadeClassifier('cascade_226.xml')
```

### Создание каскада

**1.** Сэмплирование
```
opencv_createsamples -vec traning.vec -info positive\desc.txt -bg neg_desc.txt -w 24 -h 24
```

**2.** Тренировка
```
opencv_traincascade -data cascade -vec traning.vec -bg negative/desc.txt 
    -numPos 180 -numNeg 60 -numStages 30 -featureType HAAR -w 24 -h 24
    -minHitRate 0.995 -maxFalseAlarmRate 0.2 
    -precalcValBufSize 1024 -precalcValBufSize 1024 -numThreads 4
```

### Аннотация

Вы можете аннотировать сет самостоятельно. Например, встроенными средствами OpenCV.
```
opencv_annotation --annotations=positive\desc.txt --images=positive\img\
opencv_annotation --annotations=negative\desc.txt --images=negative\img\
``` 

### История изменений

**08.03.2018** 226 положительных и 72 отрицательных семпла.

**14.02.2018** 114 положительных и 20 отрицательных семплов.
