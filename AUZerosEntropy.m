function e = AUZerosEntropy(EmoBinaryTarget, currentAU)
    sumNeg = 0;
    sumPos = 0;
  
    for i =1:length(currentAU)
        if currentAU(i) == 0
            if EmoBinaryTarget(i) == 1
                sumPos = sumPos+1;           
            else
                sumNeg = sumNeg+1;
            end
        end
     end

    posProportion = sumPos/(length(currentAU)- sum(currentAU));
    negProportion = sumNeg/(length(currentAU)- sum(currentAU));

    e = - posProportion*log2(posProportion) - negProportion*log2(negProportion);
end