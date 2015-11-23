%% Read data
X = csvread('../../finalproject/inputs/test01.txt');

plot(X(:,1), X(:,2), '.-')

%% Velocities
V = diff(X);

Vnext = V(2:end,:);
V = V(1:end-1,:);

X = X(1:end-2,:);

figure
%quiver(X(:,1), X(:,2), V(:,1), V(:,2))

%[theta, vr] = cart2pol(vy, vx);
%rose(theta) % direction not to the right as much
%hist(vr) % speed mostly around 20

% as long as nothing happens, v stays constant
% high speeds tend not to change
quiver(V(:,1), V(:,2), Vnext(:,1) - V(:,1), Vnext(:,2) - V(:,2))


%% Accelerations
figure
A = diff(V);

Anext = A(2:end,:);
A = A(1:end-1,:);

X = X(1:end-2,:);

% acceleration changes towards zero. Deceleration in general, no angle change.
% quiver(A(:,1), A(:,2), Anext(:,1) - A(:,1), Anext(:,2) - A(:,2))
% quiver(A(:,1), A(:,2), Anext(:,1), Anext(:,2))

% acceleration is bigger at the edges
quiver(X(:,1), X(:,2), A(:,1), A(:,2))
%quiver(X(:,1), X(:,2), Anext(:,1) - A(:,1), Anext(:,2) - A(:,2))




