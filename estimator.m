imagefiles = dir('test/*.png');

for i = 1:size(imagefiles, 1)
    a = imread(strcat('test/', imagefiles(i).name));
    imagefiles(i).name
    b = zeros(size(a));
    for i = 1:size(a, 3)
        b(:, :, i) = a(:, :, i) & 255;
    end
    c = zeros(size(b, 1), size(b , 2));
    c = b(:, :, 1) & b(:, :, 2) & b(:, :, 3);
    ratio = sum(sum(c ~= 1)) / numel(c)
end