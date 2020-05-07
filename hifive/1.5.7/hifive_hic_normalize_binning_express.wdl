version 1.0

task HifiveHicNormalizeBinningExpress {
  input {
    Int minMinDistance
    Int maxMaxDistance
    String chromosomesChromosomes
    String outputOutputFile
    Boolean quietQuiet
    String expressExpressIterations
    String minMinChange
    Boolean removeRemoveDistance
    String expressExpressReads
    Boolean binaryBinary
    Boolean knightKnightRuiz
    Int minMinInteractions
    String binningBinningIterations
    String learningLearningThreshold
    String binningBinningReads
    String modelModel
    String modelModelBins
    String parameterParameterTypes
    String pseudoPseudoCounts
    String? projectProject
  }
  command <<<
    hifive hic-normalize binning-express \
      ~{projectProject} \
      ~{if defined(minMinDistance) then ("--min-distance " +  '"' + minMinDistance + '"') else ""} \
      ~{if defined(maxMaxDistance) then ("--max-distance " +  '"' + maxMaxDistance + '"') else ""} \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(expressExpressIterations) then ("--express-iterations " +  '"' + expressExpressIterations + '"') else ""} \
      ~{if defined(minMinChange) then ("--min-change " +  '"' + minMinChange + '"') else ""} \
      ~{true="--remove-distance" false="" removeRemoveDistance} \
      ~{if defined(expressExpressReads) then ("--express-reads " +  '"' + expressExpressReads + '"') else ""} \
      ~{true="--binary" false="" binaryBinary} \
      ~{true="--knight-ruiz" false="" knightKnightRuiz} \
      ~{if defined(minMinInteractions) then ("--min-interactions " +  '"' + minMinInteractions + '"') else ""} \
      ~{if defined(binningBinningIterations) then ("--binning-iterations " +  '"' + binningBinningIterations + '"') else ""} \
      ~{if defined(learningLearningThreshold) then ("--learning-threshold " +  '"' + learningLearningThreshold + '"') else ""} \
      ~{if defined(binningBinningReads) then ("--binning-reads " +  '"' + binningBinningReads + '"') else ""} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{if defined(modelModelBins) then ("--model-bins " +  '"' + modelModelBins + '"') else ""} \
      ~{if defined(parameterParameterTypes) then ("--parameter-types " +  '"' + parameterParameterTypes + '"') else ""} \
      ~{if defined(pseudoPseudoCounts) then ("--pseudocounts " +  '"' + pseudoPseudoCounts + '"') else ""}
  >>>
}