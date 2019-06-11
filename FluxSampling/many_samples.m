function samples = many_samples(model,iters,sDens,modelname)
   %run chain
   iterations = iters;
   options.nStepsPerPoint = sDens; %sampling density 
   options.nPointsReturned = iterations; %number of points returned 
   options.toRound = 1; %whether or not the polytope is rounded
   options.optPercentage = 0;
   tic
   [~, samples] =  sampleCbModel(model, [], [], options); %outputs model (polytope) and samples 
   toc
   filenameA = insertBefore('ResultsCHRR__.mat',14,num2str(iterations));
   filename = insertBefore(filenameA,13,modelname);
   filenameB = insertBefore('ResultsCHRR__.csv',14,num2str(iterations));
   filename1 = insertBefore(filenameB,13,modelname);
   %save(filename, 'samples')
   t_samples = transpose(samples);
   csvwrite(filename1,t_samples)
   disp('Finished model')
end