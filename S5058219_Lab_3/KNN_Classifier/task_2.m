clc

clear

train_lables = loadMNISTLabels('train-labels.idx1-ubyte');

train_images = transpose(loadMNISTImages('train-images.idx3-ubyte'));

test_lables = loadMNISTLabels('t10k-labels.idx1-ubyte');

% test_lables = test_lables1(1:500,:);

test_images = transpose(loadMNISTImages('t10k-images.idx3-ubyte'));

% test_images = test_images1(1:500,:);

k = 5;

[predictions,accuracy] = KNN(k,train_images,train_lables,test_images,test_lables) ;

Z = transpose(test_lables);

P = transpose(predictions);

fprintf('the accuracy is %f percent',accuracy)
