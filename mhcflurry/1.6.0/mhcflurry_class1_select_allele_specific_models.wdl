version 1.0

task MhcflurryClass1SelectAlleleSpecificModels {
  input {
    Array[String]+ alleleAllele
    String combinedCombinedMinModels
    String combinedCombinedMaxModels
    String combinedCombinedMinContributionPercent
    String massMassSpecMinMeasurements
    String massMassSpecMinModels
    String massMassSpecMaxModels
    String mseMseMinMeasurements
    String mseMseMinModels
    String mseMseMaxModels
    Array[String]+ scoringScoring
    String consensusConsensusMinModels
    String consensusConsensusMaxModels
    String consensusConsensusNumPeptidesPerLength
    String massMassSpecRegex
    String verbosityVerbosity
    String numNumJobs
    String backendBackend
    String gpusGpus
    String maxMaxWorkersPerGpu
    String maxMaxTasksPerWorker
    String workerWorkerLogDir
  }
  command <<<
    mhcflurry-class1-select-allele-specific-models \
      ~{if defined(alleleAllele) then ("--allele " +  '"' + alleleAllele + '"') else ""} \
      ~{if defined(combinedCombinedMinModels) then ("--combined-min-models " +  '"' + combinedCombinedMinModels + '"') else ""} \
      ~{if defined(combinedCombinedMaxModels) then ("--combined-max-models " +  '"' + combinedCombinedMaxModels + '"') else ""} \
      ~{if defined(combinedCombinedMinContributionPercent) then ("--combined-min-contribution-percent " +  '"' + combinedCombinedMinContributionPercent + '"') else ""} \
      ~{if defined(massMassSpecMinMeasurements) then ("--mass-spec-min-measurements " +  '"' + massMassSpecMinMeasurements + '"') else ""} \
      ~{if defined(massMassSpecMinModels) then ("--mass-spec-min-models " +  '"' + massMassSpecMinModels + '"') else ""} \
      ~{if defined(massMassSpecMaxModels) then ("--mass-spec-max-models " +  '"' + massMassSpecMaxModels + '"') else ""} \
      ~{if defined(mseMseMinMeasurements) then ("--mse-min-measurements " +  '"' + mseMseMinMeasurements + '"') else ""} \
      ~{if defined(mseMseMinModels) then ("--mse-min-models " +  '"' + mseMseMinModels + '"') else ""} \
      ~{if defined(mseMseMaxModels) then ("--mse-max-models " +  '"' + mseMseMaxModels + '"') else ""} \
      ~{if defined(scoringScoring) then ("--scoring " +  '"' + scoringScoring + '"') else ""} \
      ~{if defined(consensusConsensusMinModels) then ("--consensus-min-models " +  '"' + consensusConsensusMinModels + '"') else ""} \
      ~{if defined(consensusConsensusMaxModels) then ("--consensus-max-models " +  '"' + consensusConsensusMaxModels + '"') else ""} \
      ~{if defined(consensusConsensusNumPeptidesPerLength) then ("--consensus-num-peptides-per-length " +  '"' + consensusConsensusNumPeptidesPerLength + '"') else ""} \
      ~{if defined(massMassSpecRegex) then ("--mass-spec-regex " +  '"' + massMassSpecRegex + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(numNumJobs) then ("--num-jobs " +  '"' + numNumJobs + '"') else ""} \
      ~{if defined(backendBackend) then ("--backend " +  '"' + backendBackend + '"') else ""} \
      ~{if defined(gpusGpus) then ("--gpus " +  '"' + gpusGpus + '"') else ""} \
      ~{if defined(maxMaxWorkersPerGpu) then ("--max-workers-per-gpu " +  '"' + maxMaxWorkersPerGpu + '"') else ""} \
      ~{if defined(maxMaxTasksPerWorker) then ("--max-tasks-per-worker " +  '"' + maxMaxTasksPerWorker + '"') else ""} \
      ~{if defined(workerWorkerLogDir) then ("--worker-log-dir " +  '"' + workerWorkerLogDir + '"') else ""}
  >>>
}