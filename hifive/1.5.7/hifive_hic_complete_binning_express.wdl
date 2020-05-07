version 1.0

task HifiveHicCompleteBinningExpress {
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
    String expressExpressIterations
    String minMinChange
    Boolean removeRemoveDistance
    String expressExpressReads
    Boolean binaryBinary
    Boolean knightKnightRuiz
    String binningBinningIterations
    String learningLearningThreshold
    String binningBinningReads
    String modelModel
    String modelModelBins
    String parameterParameterTypes
    String pseudoPseudoCounts
  }
  command <<<
    hifive hic-complete binning-express \
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
      ~{if defined(expressExpressIterations) then ("--express-iterations " +  '"' + expressExpressIterations + '"') else ""} \
      ~{if defined(minMinChange) then ("--min-change " +  '"' + minMinChange + '"') else ""} \
      ~{true="--remove-distance" false="" removeRemoveDistance} \
      ~{if defined(expressExpressReads) then ("--express-reads " +  '"' + expressExpressReads + '"') else ""} \
      ~{true="--binary" false="" binaryBinary} \
      ~{true="--knight-ruiz" false="" knightKnightRuiz} \
      ~{if defined(binningBinningIterations) then ("--binning-iterations " +  '"' + binningBinningIterations + '"') else ""} \
      ~{if defined(learningLearningThreshold) then ("--learning-threshold " +  '"' + learningLearningThreshold + '"') else ""} \
      ~{if defined(binningBinningReads) then ("--binning-reads " +  '"' + binningBinningReads + '"') else ""} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{if defined(modelModelBins) then ("--model-bins " +  '"' + modelModelBins + '"') else ""} \
      ~{if defined(parameterParameterTypes) then ("--parameter-types " +  '"' + parameterParameterTypes + '"') else ""} \
      ~{if defined(pseudoPseudoCounts) then ("--pseudocounts " +  '"' + pseudoPseudoCounts + '"') else ""}
  >>>
}