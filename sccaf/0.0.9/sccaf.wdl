version 1.0

task Sccaf {
  input {
    String inputInputFile
    String outputOutputFile
    String externalExternalClusteringTsv
    Boolean optimiseOptimise
    Boolean skipSkipAssessment
    String slotSlotForExistingClustering
    String resolutionResolution
    Int minMinAccuracy
    String prefixPrefix
    String coresCores
    String underUnderClusterBoundary
    Boolean produceProduceRoundsSummary
    String optimisationOptimisationPlotsOutput
    String confConfSamplingIterations
  }
  command <<<
    sccaf \
      ~{if defined(inputInputFile) then ("--input-file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(externalExternalClusteringTsv) then ("--external-clustering-tsv " +  '"' + externalExternalClusteringTsv + '"') else ""} \
      ~{true="--optimise" false="" optimiseOptimise} \
      ~{true="--skip-assessment" false="" skipSkipAssessment} \
      ~{if defined(slotSlotForExistingClustering) then ("--slot-for-existing-clustering " +  '"' + slotSlotForExistingClustering + '"') else ""} \
      ~{if defined(resolutionResolution) then ("--resolution " +  '"' + resolutionResolution + '"') else ""} \
      ~{if defined(minMinAccuracy) then ("--min-accuracy " +  '"' + minMinAccuracy + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(underUnderClusterBoundary) then ("--undercluster-boundary " +  '"' + underUnderClusterBoundary + '"') else ""} \
      ~{true="--produce-rounds-summary" false="" produceProduceRoundsSummary} \
      ~{if defined(optimisationOptimisationPlotsOutput) then ("--optimisation-plots-output " +  '"' + optimisationOptimisationPlotsOutput + '"') else ""} \
      ~{if defined(confConfSamplingIterations) then ("--conf-sampling-iterations " +  '"' + confConfSamplingIterations + '"') else ""}
  >>>
}