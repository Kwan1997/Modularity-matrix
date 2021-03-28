function [B, B2] = ConstructModularityMatrix(A)
    deg = sum(A, 2);
    m = 0.5 * sum(deg);
    B2 = (deg * deg') ./ (2 * m);
    B = A - B2;
end