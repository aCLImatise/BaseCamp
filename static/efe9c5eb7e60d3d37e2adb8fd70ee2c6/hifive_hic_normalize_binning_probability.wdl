version 1.0

task HifiveHicNormalizeBinningProbability {
  input {
    Int minMinDistance
    Int maxMaxDistance
    String chromosomesChromosomes
    String outputOutputFile
    Boolean quietQuiet
    String maxMaxIterations
    String minMinChange
    Boolean prePreCalculate
    String learningLearningStep
    String probabilityProbabilityModel
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
    hifive hic-normalize binning-probability \
      ~{projectProject} \
      ~{if defined(minMinDistance) then ("--min-distance " +  '"' + minMinDistance + '"') else ""} \
      ~{if defined(maxMaxDistance) then ("--max-distance " +  '"' + maxMaxDistance + '"') else ""} \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(maxMaxIterations) then ("--max-iterations " +  '"' + maxMaxIterations + '"') else ""} \
      ~{if defined(minMinChange) then ("--min-change " +  '"' + minMinChange + '"') else ""} \
      ~{true="--precalculate" false="" prePreCalculate} \
      ~{if defined(learningLearningStep) then ("--learning-step " +  '"' + learningLearningStep + '"') else ""} \
      ~{if defined(probabilityProbabilityModel) then ("--probability-model " +  '"' + probabilityProbabilityModel + '"') else ""} \
      ~{if defined(binningBinningIterations) then ("--binning-iterations " +  '"' + binningBinningIterations + '"') else ""} \
      ~{if defined(learningLearningThreshold) then ("--learning-threshold " +  '"' + learningLearningThreshold + '"') else ""} \
      ~{if defined(binningBinningReads) then ("--binning-reads " +  '"' + binningBinningReads + '"') else ""} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{if defined(modelModelBins) then ("--model-bins " +  '"' + modelModelBins + '"') else ""} \
      ~{if defined(parameterParameterTypes) then ("--parameter-types " +  '"' + parameterParameterTypes + '"') else ""} \
      ~{if defined(pseudoPseudoCounts) then ("--pseudocounts " +  '"' + pseudoPseudoCounts + '"') else ""}
  >>>
}