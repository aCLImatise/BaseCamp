version 1.0

task DisentangleOrganelleAssembly.py {
  input {
    String gG
    String tT
    String oO
    String fF
    Boolean linearLinear
    String weightWeightF
    String depthDepthF
    String typeTypeF
    String contaminationContaminationDepth
    String contaminationContaminationSimilarity
    Boolean noNoDegenerate
    String degenerateDegenerateDepth
    String degenerateDegenerateSimilarity
    String expectedExpectedMaxSize
    String expectedExpectedMinSize
    Boolean reverseReverseLsc
    Int maxMaxPathsNum
    Boolean keepKeepAllPolymorphic
    Int minMinSigma
    Int minMinDepth
    Int maxMaxDepth
    Int maxMaxMultiplicity
    String prefixPrefix
    Boolean keepKeepTemp
    String timeTimeLimit
    String randomRandomSeed
    Boolean continueContinue
    Boolean verboseVerbose
    Boolean debugDebug
  }
  command <<<
    disentangle_organelle_assembly.py \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(fF) then ("-F " +  '"' + fF + '"') else ""} \
      ~{true="--linear" false="" linearLinear} \
      ~{if defined(weightWeightF) then ("--weight-f " +  '"' + weightWeightF + '"') else ""} \
      ~{if defined(depthDepthF) then ("--depth-f " +  '"' + depthDepthF + '"') else ""} \
      ~{if defined(typeTypeF) then ("--type-f " +  '"' + typeTypeF + '"') else ""} \
      ~{if defined(contaminationContaminationDepth) then ("--contamination-depth " +  '"' + contaminationContaminationDepth + '"') else ""} \
      ~{if defined(contaminationContaminationSimilarity) then ("--contamination-similarity " +  '"' + contaminationContaminationSimilarity + '"') else ""} \
      ~{true="--no-degenerate" false="" noNoDegenerate} \
      ~{if defined(degenerateDegenerateDepth) then ("--degenerate-depth " +  '"' + degenerateDegenerateDepth + '"') else ""} \
      ~{if defined(degenerateDegenerateSimilarity) then ("--degenerate-similarity " +  '"' + degenerateDegenerateSimilarity + '"') else ""} \
      ~{if defined(expectedExpectedMaxSize) then ("--expected-max-size " +  '"' + expectedExpectedMaxSize + '"') else ""} \
      ~{if defined(expectedExpectedMinSize) then ("--expected-min-size " +  '"' + expectedExpectedMinSize + '"') else ""} \
      ~{true="--reverse-lsc" false="" reverseReverseLsc} \
      ~{if defined(maxMaxPathsNum) then ("--max-paths-num " +  '"' + maxMaxPathsNum + '"') else ""} \
      ~{true="--keep-all-polymorphic" false="" keepKeepAllPolymorphic} \
      ~{if defined(minMinSigma) then ("--min-sigma " +  '"' + minMinSigma + '"') else ""} \
      ~{if defined(minMinDepth) then ("--min-depth " +  '"' + minMinDepth + '"') else ""} \
      ~{if defined(maxMaxDepth) then ("--max-depth " +  '"' + maxMaxDepth + '"') else ""} \
      ~{if defined(maxMaxMultiplicity) then ("--max-multiplicity " +  '"' + maxMaxMultiplicity + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--keep-temp" false="" keepKeepTemp} \
      ~{if defined(timeTimeLimit) then ("--time-limit " +  '"' + timeTimeLimit + '"') else ""} \
      ~{if defined(randomRandomSeed) then ("--random-seed " +  '"' + randomRandomSeed + '"') else ""} \
      ~{true="--continue" false="" continueContinue} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug}
  >>>
}