version 1.0

task GetOrganelleFromAssembly.py {
  input {
    String fF
    String gG
    String oO
    Int minMinDepth
    Int maxMaxDepth
    String genesGenes
    String exExGenes
    Boolean noNoSlim
    String slimSlimOptions
    String depthDepthFactor
    String typeTypeF
    String contaminationContaminationDepth
    String contaminationContaminationSimilarity
    Boolean noNoDegenerate
    String degenerateDegenerateDepth
    String degenerateDegenerateSimilarity
    String disentangleDisentangleTimeLimit
    String expectedExpectedMaxSize
    String expectedExpectedMinSize
    Boolean reverseReverseLsc
    Int maxMaxPathsNum
    Boolean keepKeepAllPolymorphic
    Int minMinSigma
    Int maxMaxMultiplicity
    String tT
    String prefixPrefix
    String whichWhichBlast
    String whichWhichBandage
    Boolean keepKeepTemp
    Boolean continueContinue
    String randomRandomSeed
    Boolean verboseVerbose
    Boolean helpHelp
    String? 1010
  }
  command <<<
    get_organelle_from_assembly.py \
      ~{1010} \
      ~{if defined(fF) then ("-F " +  '"' + fF + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(minMinDepth) then ("--min-depth " +  '"' + minMinDepth + '"') else ""} \
      ~{if defined(maxMaxDepth) then ("--max-depth " +  '"' + maxMaxDepth + '"') else ""} \
      ~{if defined(genesGenes) then ("--genes " +  '"' + genesGenes + '"') else ""} \
      ~{if defined(exExGenes) then ("--ex-genes " +  '"' + exExGenes + '"') else ""} \
      ~{true="--no-slim" false="" noNoSlim} \
      ~{if defined(slimSlimOptions) then ("--slim-options " +  '"' + slimSlimOptions + '"') else ""} \
      ~{if defined(depthDepthFactor) then ("--depth-factor " +  '"' + depthDepthFactor + '"') else ""} \
      ~{if defined(typeTypeF) then ("--type-f " +  '"' + typeTypeF + '"') else ""} \
      ~{if defined(contaminationContaminationDepth) then ("--contamination-depth " +  '"' + contaminationContaminationDepth + '"') else ""} \
      ~{if defined(contaminationContaminationSimilarity) then ("--contamination-similarity " +  '"' + contaminationContaminationSimilarity + '"') else ""} \
      ~{true="--no-degenerate" false="" noNoDegenerate} \
      ~{if defined(degenerateDegenerateDepth) then ("--degenerate-depth " +  '"' + degenerateDegenerateDepth + '"') else ""} \
      ~{if defined(degenerateDegenerateSimilarity) then ("--degenerate-similarity " +  '"' + degenerateDegenerateSimilarity + '"') else ""} \
      ~{if defined(disentangleDisentangleTimeLimit) then ("--disentangle-time-limit " +  '"' + disentangleDisentangleTimeLimit + '"') else ""} \
      ~{if defined(expectedExpectedMaxSize) then ("--expected-max-size " +  '"' + expectedExpectedMaxSize + '"') else ""} \
      ~{if defined(expectedExpectedMinSize) then ("--expected-min-size " +  '"' + expectedExpectedMinSize + '"') else ""} \
      ~{true="--reverse-lsc" false="" reverseReverseLsc} \
      ~{if defined(maxMaxPathsNum) then ("--max-paths-num " +  '"' + maxMaxPathsNum + '"') else ""} \
      ~{true="--keep-all-polymorphic" false="" keepKeepAllPolymorphic} \
      ~{if defined(minMinSigma) then ("--min-sigma " +  '"' + minMinSigma + '"') else ""} \
      ~{if defined(maxMaxMultiplicity) then ("--max-multiplicity " +  '"' + maxMaxMultiplicity + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(whichWhichBlast) then ("--which-blast " +  '"' + whichWhichBlast + '"') else ""} \
      ~{if defined(whichWhichBandage) then ("--which-bandage " +  '"' + whichWhichBandage + '"') else ""} \
      ~{true="--keep-temp" false="" keepKeepTemp} \
      ~{true="--continue" false="" continueContinue} \
      ~{if defined(randomRandomSeed) then ("--random-seed " +  '"' + randomRandomSeed + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--help" false="" helpHelp}
  >>>
}