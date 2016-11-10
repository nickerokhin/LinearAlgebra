function [Q R] = grahamschmidt(A)
Q = [A(:,1)]
c = size(A,2)
t = zeros(size(A,1), 1)
s = [];

for i = 2:c
    for k = 1:i-1
       t = t - ((dot(A(:,i), Q(:,k)))/(dot(Q(:,k), Q(:,k))))*Q(:,k);
    end
       s = A(:,i) + t;
       Q = [Q s];
       t = zeros(size(A,1), 1);
       s = [];
end
for i = 1:c
    Q(:,i) = (Q(:,i))/norm(Q(:,i));
end


R = Q' * A






end


