version 1.0

task HifiveHicCompleteProbability {
  input {
    String fendFend
    String bedBed
    Int lengthLength
    String binnedBinned
    String reRe
    String genomeGenome
    String sS
    String rawRaw
    String matMat
    String matrixMatrix
    String insertInsert
    Boolean skipSkipDuplicateFiltering
    Int minMinInteractions
    Int minMinDistance
    Int maxMaxDistance
    String chromosomesChromosomes
    Int minMinBinsize
    String numNumBins
    Boolean quietQuiet
    String prefixPrefix
    String oO
    String maxMaxIterations
    String minMinChange
    Boolean prePreCalculate
    String learningLearningStep
    String probabilityProbabilityModel
  }
  command <<<
    hifive hic-complete probability \
      ~{if defined(fendFend) then ("--fend " +  '"' + fendFend + '"') else ""} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(binnedBinned) then ("--binned " +  '"' + binnedBinned + '"') else ""} \
      ~{if defined(reRe) then ("--re " +  '"' + reRe + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(rawRaw) then ("--raw " +  '"' + rawRaw + '"') else ""} \
      ~{if defined(matMat) then ("--mat " +  '"' + matMat + '"') else ""} \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(insertInsert) then ("--insert " +  '"' + insertInsert + '"') else ""} \
      ~{true="--skip-duplicate-filtering" false="" skipSkipDuplicateFiltering} \
      ~{if defined(minMinInteractions) then ("--min-interactions " +  '"' + minMinInteractions + '"') else ""} \
      ~{if defined(minMinDistance) then ("--min-distance " +  '"' + minMinDistance + '"') else ""} \
      ~{if defined(maxMaxDistance) then ("--max-distance " +  '"' + maxMaxDistance + '"') else ""} \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{if defined(minMinBinsize) then ("--min-binsize " +  '"' + minMinBinsize + '"') else ""} \
      ~{if defined(numNumBins) then ("--num-bins " +  '"' + numNumBins + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(maxMaxIterations) then ("--max-iterations " +  '"' + maxMaxIterations + '"') else ""} \
      ~{if defined(minMinChange) then ("--min-change " +  '"' + minMinChange + '"') else ""} \
      ~{true="--precalculate" false="" prePreCalculate} \
      ~{if defined(learningLearningStep) then ("--learning-step " +  '"' + learningLearningStep + '"') else ""} \
      ~{if defined(probabilityProbabilityModel) then ("--probability-model " +  '"' + probabilityProbabilityModel + '"') else ""}
  >>>
}