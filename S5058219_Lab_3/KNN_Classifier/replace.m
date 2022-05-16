function [train_lables,train_images,test_lables,test_images] = replace(number)

train_lables = loadMNISTLabels('train-labels.idx1-ubyte');

% train_lables = train_lables1(1:6000,:);

train_images = transpose(loadMNISTImages('train-images.idx3-ubyte'));

% train_images = train_images1(1:6000,:);

test_lables = loadMNISTLabels('t10k-labels.idx1-ubyte');

% test_lables = test_lables1(1:1000,:);

test_images = transpose(loadMNISTImages('t10k-images.idx3-ubyte'));

% test_images = test_images1(1:1000,:);

if number ~= 0
    if train_lables(train_lables == number)
    train_lables(train_lables ~= number) = false;
    train_lables(train_lables == number) = true;
    end

    if train_images(train_images == number)
        train_images(train_images ~= number) = false;
        train_images(train_images == number) = true;
    end

    if test_lables(test_lables == number)
        test_lables(test_lables ~= number) = false;
        test_lables(test_lables == number) = true;
    end

    if test_images(test_images == number)
        test_images(test_images ~= number) = false;
        test_images(test_images == number) = true;
    end
end

if number == 0
    if train_lables(train_lables > number)
    train_lables(train_lables > number) = true;
    train_lables = ~ train_lables;
    end

    if train_images(train_images > number)
        train_images(train_images > number) = true;
        train_images = ~ train_images;
    end

    if test_lables(test_lables > number)
        test_lables(test_lables > number) = true;
        test_lables = ~ test_lables;
    end

    if test_images(test_images > number)
        test_images(test_images > number) = true;
        test_images = ~ test_images;
    end
end   
end

