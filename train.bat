opencv_traincascade -data cascade -vec traning.vec -bg negative/desc.txt -numPos 100 -numNeg 20 -numStages 30 -featureType HAAR -w 24 -h 24 -minHitRate 0.995 -maxFalseAlarmRate 0.2 -precalcValBufSize 1024 -precalcValBufSize 1024 -numThreads 4