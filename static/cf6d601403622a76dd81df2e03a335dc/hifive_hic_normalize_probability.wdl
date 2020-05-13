version 1.0

task HifiveHicNormalizeProbability {
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
    String? projectProject
  }
  command <<<
    hifive hic-normalize probability \
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
      ~{if defined(probabilityProbabilityModel) then ("--probability-model " +  '"' + probabilityProbabilityModel + '"') else ""}
  >>>
}