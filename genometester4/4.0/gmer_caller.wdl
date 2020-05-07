version 1.0

task GmerCaller {
  input {
    String trainingTrainingSize
    String runsRuns
    String numNumThreads
    Boolean headerHeader
    Boolean nonNonCanonical
    Boolean probProbCutOff
    Boolean alternativesAlternatives
    Boolean infoInfo
    Boolean noNoGenotypes
    String modelModel
    String paramsParams
    String coverageCoverage
    Boolean dD
    String? argumentsArguments
    String? countsCountsFile
  }
  command <<<
    gmer_caller \
      ~{argumentsArguments} \
      ~{if defined(trainingTrainingSize) then ("--training_size " +  '"' + trainingTrainingSize + '"') else ""} \
      ~{if defined(runsRuns) then ("--runs " +  '"' + runsRuns + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num_threads " +  '"' + numNumThreads + '"') else ""} \
      ~{true="--header" false="" headerHeader} \
      ~{true="--non_canonical" false="" nonNonCanonical} \
      ~{true="--prob_cutoff" false="" probProbCutOff} \
      ~{true="--alternatives" false="" alternativesAlternatives} \
      ~{true="--info" false="" infoInfo} \
      ~{true="--no_genotypes" false="" noNoGenotypes} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{if defined(paramsParams) then ("--params " +  '"' + paramsParams + '"') else ""} \
      ~{if defined(coverageCoverage) then ("--coverage " +  '"' + coverageCoverage + '"') else ""} \
      ~{true="-D" false="" dD} \
      ~{countsCountsFile}
  >>>
}