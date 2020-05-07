version 1.0

task Recognicer {
  input {
    String treatmentTreatmentFile
    String controlControlFile
    String speciesSpecies
    String redundancyRedundancyThreshold
    String windowWindowSize
    String fragmentFragmentSize
    String effectiveEffectiveGenomeFraction
    String falseFalseDiscoveryRate
    String outputOutputDirectory
    String stepStepSize
    String stepStepScore
    String cpuCpu
    Boolean significantSignificantReads
    Boolean verboseVerbose
    String? useUse
    String? moreMore
    String? informationInformation
  }
  command <<<
    recognicer \
      ~{useUse} \
      ~{if defined(treatmentTreatmentFile) then ("--treatment_file " +  '"' + treatmentTreatmentFile + '"') else ""} \
      ~{if defined(controlControlFile) then ("--control_file " +  '"' + controlControlFile + '"') else ""} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{if defined(redundancyRedundancyThreshold) then ("--redundancy_threshold " +  '"' + redundancyRedundancyThreshold + '"') else ""} \
      ~{if defined(windowWindowSize) then ("--window_size " +  '"' + windowWindowSize + '"') else ""} \
      ~{if defined(fragmentFragmentSize) then ("--fragment_size " +  '"' + fragmentFragmentSize + '"') else ""} \
      ~{if defined(effectiveEffectiveGenomeFraction) then ("--effective_genome_fraction " +  '"' + effectiveEffectiveGenomeFraction + '"') else ""} \
      ~{if defined(falseFalseDiscoveryRate) then ("--false_discovery_rate " +  '"' + falseFalseDiscoveryRate + '"') else ""} \
      ~{if defined(outputOutputDirectory) then ("--output_directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{if defined(stepStepSize) then ("--step_size " +  '"' + stepStepSize + '"') else ""} \
      ~{if defined(stepStepScore) then ("--step_score " +  '"' + stepStepScore + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{true="--significant_reads" false="" significantSignificantReads} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{moreMore} \
      ~{informationInformation}
  >>>
}