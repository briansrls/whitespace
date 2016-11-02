imagefiles = dir('test/*.png');

for i = 1:size(imagefiles, 1)
    a = imread(strcat('test/', imagefiles(i).name));
    b = zeros(size(a));
    b(:, :, :) = a(:, :, :) > 250;
    c = zeros(size(b, 1), size(b , 2));
    c = b(:, :, 1) & b(:, :, 2) & b(:, :, 3);
    ratio = sum(sum(c ~= 1)) / sum(sum(c ~= 0));
    fprintf(strcat(imagefiles(i).name,  ': %f\n'), ratio);
end
