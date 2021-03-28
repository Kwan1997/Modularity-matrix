function [B, B1] = ConstructModularityMatrix(A)
    deg = sum(A, 2);
    m = 0.5 * sum(deg);
    B1 = (deg * deg') ./ (2 * m);
    B = A - B1;
end