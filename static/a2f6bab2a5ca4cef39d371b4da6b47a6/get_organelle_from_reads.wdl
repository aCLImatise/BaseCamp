version 1.0

task GetOrganelleFromReads.py {
  input {
    String uU
    String oO
    String sS
    String aA
    Int maxMaxReads
    String reduceReduceReadsForCoverage
    Int maxMaxIgnorePercent
    Int minMinQualityScore
    String prefixPrefix
    Boolean outOutPerRound
    Boolean zipZipFiles
    Boolean keepKeepTemp
    String fF
    Boolean fastFast
    Boolean memoryMemorySave
    Boolean memoryMemoryUnlimited
    String wW
    String prePreW
    Int maxMaxRounds
    Int maxMaxNWords
    String jJ
    String mM
    String bowtie2Bowtie2Options
    Boolean largerLargerAutoWs
    String targetTargetGenomeSize
    Int maxMaxExtendingLen
    String kK
    String spadesSpadesOptions
    Boolean noNoSpades
    Boolean gradientGradientK
    String ignoreIgnoreK
    String genesGenes
    String exExGenes
    String disentangleDisentangleDf
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
    String tT
    String pP
    String whichWhichBlast
    String whichWhichBowtie2
    String whichWhichSpades
    String whichWhichBandage
    Boolean continueContinue
    Boolean indexIndexInMemory
    String removeRemoveDuplicates
    String flushFlushStep
    String randomRandomSeed
    Boolean verboseVerbose
  }
  command <<<
    get_organelle_from_reads.py \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(maxMaxReads) then ("--max-reads " +  '"' + maxMaxReads + '"') else ""} \
      ~{if defined(reduceReduceReadsForCoverage) then ("--reduce-reads-for-coverage " +  '"' + reduceReduceReadsForCoverage + '"') else ""} \
      ~{if defined(maxMaxIgnorePercent) then ("--max-ignore-percent " +  '"' + maxMaxIgnorePercent + '"') else ""} \
      ~{if defined(minMinQualityScore) then ("--min-quality-score " +  '"' + minMinQualityScore + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--out-per-round" false="" outOutPerRound} \
      ~{true="--zip-files" false="" zipZipFiles} \
      ~{true="--keep-temp" false="" keepKeepTemp} \
      ~{if defined(fF) then ("-F " +  '"' + fF + '"') else ""} \
      ~{true="--fast" false="" fastFast} \
      ~{true="--memory-save" false="" memoryMemorySave} \
      ~{true="--memory-unlimited" false="" memoryMemoryUnlimited} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(prePreW) then ("--pre-w " +  '"' + prePreW + '"') else ""} \
      ~{if defined(maxMaxRounds) then ("--max-rounds " +  '"' + maxMaxRounds + '"') else ""} \
      ~{if defined(maxMaxNWords) then ("--max-n-words " +  '"' + maxMaxNWords + '"') else ""} \
      ~{if defined(jJ) then ("-J " +  '"' + jJ + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(bowtie2Bowtie2Options) then ("--bowtie2-options " +  '"' + bowtie2Bowtie2Options + '"') else ""} \
      ~{true="--larger-auto-ws" false="" largerLargerAutoWs} \
      ~{if defined(targetTargetGenomeSize) then ("--target-genome-size " +  '"' + targetTargetGenomeSize + '"') else ""} \
      ~{if defined(maxMaxExtendingLen) then ("--max-extending-len " +  '"' + maxMaxExtendingLen + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(spadesSpadesOptions) then ("--spades-options " +  '"' + spadesSpadesOptions + '"') else ""} \
      ~{true="--no-spades" false="" noNoSpades} \
      ~{true="--gradient-k" false="" gradientGradientK} \
      ~{if defined(ignoreIgnoreK) then ("--ignore-k " +  '"' + ignoreIgnoreK + '"') else ""} \
      ~{if defined(genesGenes) then ("--genes " +  '"' + genesGenes + '"') else ""} \
      ~{if defined(exExGenes) then ("--ex-genes " +  '"' + exExGenes + '"') else ""} \
      ~{if defined(disentangleDisentangleDf) then ("--disentangle-df " +  '"' + disentangleDisentangleDf + '"') else ""} \
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
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{if defined(whichWhichBlast) then ("--which-blast " +  '"' + whichWhichBlast + '"') else ""} \
      ~{if defined(whichWhichBowtie2) then ("--which-bowtie2 " +  '"' + whichWhichBowtie2 + '"') else ""} \
      ~{if defined(whichWhichSpades) then ("--which-spades " +  '"' + whichWhichSpades + '"') else ""} \
      ~{if defined(whichWhichBandage) then ("--which-bandage " +  '"' + whichWhichBandage + '"') else ""} \
      ~{true="--continue" false="" continueContinue} \
      ~{true="--index-in-memory" false="" indexIndexInMemory} \
      ~{if defined(removeRemoveDuplicates) then ("--remove-duplicates " +  '"' + removeRemoveDuplicates + '"') else ""} \
      ~{if defined(flushFlushStep) then ("--flush-step " +  '"' + flushFlushStep + '"') else ""} \
      ~{if defined(randomRandomSeed) then ("--random-seed " +  '"' + randomRandomSeed + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}