Data = csvread('../../finalproject/inputs/test01.txt');
x = Data(1:end,1);
y = Data(1:end,2);
plot(x, y, '.-')

%% find center
% norm([mean(x), mean(y)])
% sqrt(mean(x)^2 + mean(y)^2)
% std(Data)
% corrcoef(Data) % cov(x,y)/sqrt(var(x)/var(y))

%% find avg velocity
vx = diff(x);
vy = diff(y);

norm(mean(vx), mean(vy))
%std(vr)
corrcoef(vx, vy) % cov(x,y)/sqrt(var(x)/var(y))

vr = sqrt(vx.^2+vy.^2);
hist(vr, 10);

%% acceleration
% ax = diff(vx);
% ay = diff(vy);
% 
% ar = norm(mean([ax, ay]))
% 
% sqrt(mean(ax)^2 + mean(ay)^2)
% %std(ar)
% corrcoef(ax, ay) % cov(x,y)/sqrt(var(x)/var(y))

