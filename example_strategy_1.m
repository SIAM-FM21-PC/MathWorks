function simObj = example_strategy_1(simObj,lambda)
    % Equal-weighted porfolio strategy (invariant to lambda)
    if nargin<2
        lambda = 0.5;
    end
    w_const = ones(simObj.d,1)/simObj.d; % equal weighted portfolio vector
    simObj = simObj.reset(); % reset simulation environment
    for i=1:simObj.T
       simObj = simObj.step(w_const);
    end
end