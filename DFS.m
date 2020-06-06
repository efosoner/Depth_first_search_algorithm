clear; clc; clear all;
A = [0, 1, 1, 1, 0, 0, 0, 0;
     0, 0, 0, 0, 1, 1, 0, 0;
     0, 0, 0, 0, 0, 0, 1, 1;
     0, 0, 0, 0, 0, 0, 0, 0;
     0, 0, 0, 0, 0, 0, 0, 0;
     0, 0, 0, 0, 0, 0, 0, 0;
     0, 0, 0, 0, 0, 0, 0, 0;
     0, 0, 0, 0, 0, 0, 0, 0;];
n = size(A, 1);
visited = zeros(1, 8);
result = zeros(0);
result = depthFirstSearch(1, n, A, visited, result);
disp(result)

dfsearch(digraph(A), 1)

function [result_] = depthFirstSearch(start_, n_, A_, visited_, result_)
    visited_(start_) = 1;
    result_ = [result_ start_];
    for i = 1 : n_
        if A_(start_, i) == 1
            if visited_(i) == 0
                result_ = depthFirstSearch(i, n_, A_, visited_, result_);
            end
        end
    end
end

 