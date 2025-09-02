function t = exercicio1(func,x0)

% nao alterar: inicio
es = 1;
imax = 20;
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%
unction t_final = exercicio1(func, func_d, x0)

    es = 0.01;
    imax = 20;

    t = zeros(imax, 1);
    erro = zeros(imax, 1);

    t(1) = x0;
    for i = 1:imax-1
        t(i+1) = t(i) - func(t(i)) / func_d(t(i));

        if t(i+1) ~= 0
            erro(i+1) = abs((t(i+1) - t(i)) / t(i+1)) * 100;
        end

        if erro(i+1) < es
            t_final = t(i+1);
            return
        end
    end

    t_final = t(imax);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
