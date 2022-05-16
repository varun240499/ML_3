clc

for number = 0:9

[train_lables,train_images,test_lables,test_images] = replace(number);

k = [1 3 5 7 9 11 15 25 45];
acc = zeros(1,length(k));
fprintf('for number equal to %d \n',number)
for i = k
    [predictions,accuracy] = KNN(i,train_images,train_lables,test_images,test_lables) ;
    fprintf('for k = %d the accuracy is %f percent \n',i,accuracy)
    acc(1,i) = accuracy;
end

acc = nonzeros(acc);
label = number;
hold on
txt = ['number = ',num2str(number)];
plot(k,acc,'DisplayName',txt)
title('k value vs accuracy')
xlabel('k value')
ylabel('accuracy')
legend show
end

