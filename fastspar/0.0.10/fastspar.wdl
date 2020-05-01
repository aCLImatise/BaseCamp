version 1.0

task Fastspar {
  input {
    File otuOtuTable
    File correlationCorrelation
    File covarianceCovariance
    Int iterationsIterations
    Int exclusionExclusionIterations
    Float thresholdThreshold
    Int threadsThreads
    Int seedSeed
    Boolean yesYes
    Boolean vV
  }
  command <<<
    fastspar \
      ~{if defined(otuOtuTable) then ("--otu_table " +  '"' + otuOtuTable + '"') else ""} \
      ~{if defined(correlationCorrelation) then ("-correlation " +  '"' + correlationCorrelation + '"') else ""} \
      ~{if defined(covarianceCovariance) then ("--covariance " +  '"' + covarianceCovariance + '"') else ""} \
      ~{if defined(iterationsIterations) then ("--iterations " +  '"' + iterationsIterations + '"') else ""} \
      ~{if defined(exclusionExclusionIterations) then ("--exclusion_iterations " +  '"' + exclusionExclusionIterations + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="--yes" false="" yesYes} \
      ~{true="-v" false="" vV}
  >>>
}