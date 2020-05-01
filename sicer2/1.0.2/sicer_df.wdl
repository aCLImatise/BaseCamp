version 1.0

task SicerDf {
  input {
    Array[String]+ treatmentTreatmentFile
    Boolean controlControlFile
    String speciesSpecies
    String redundancyRedundancyThreshold
    String windowWindowSize
    String fragmentFragmentSize
    String effectiveEffectiveGenomeFraction
    String falseFalseDiscoveryRate
    String falseFalseDiscoveryRateDf
    String outputOutputDirectory
    String gapGapSize
    String eEValue
    String cpuCpu
    Boolean significantSignificantReads
    Boolean verboseVerbose
    String? useUse
    String? moreMore
    String? informationInformation
  }
  command <<<
    sicer_df \
      ~{useUse} \
      ~{if defined(treatmentTreatmentFile) then ("--treatment_file " +  '"' + treatmentTreatmentFile + '"') else ""} \
      ~{true="--control_file" false="" controlControlFile} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{if defined(redundancyRedundancyThreshold) then ("--redundancy_threshold " +  '"' + redundancyRedundancyThreshold + '"') else ""} \
      ~{if defined(windowWindowSize) then ("--window_size " +  '"' + windowWindowSize + '"') else ""} \
      ~{if defined(fragmentFragmentSize) then ("--fragment_size " +  '"' + fragmentFragmentSize + '"') else ""} \
      ~{if defined(effectiveEffectiveGenomeFraction) then ("--effective_genome_fraction " +  '"' + effectiveEffectiveGenomeFraction + '"') else ""} \
      ~{if defined(falseFalseDiscoveryRate) then ("--false_discovery_rate " +  '"' + falseFalseDiscoveryRate + '"') else ""} \
      ~{if defined(falseFalseDiscoveryRateDf) then ("--false_discovery_rate_df " +  '"' + falseFalseDiscoveryRateDf + '"') else ""} \
      ~{if defined(outputOutputDirectory) then ("--output_directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{if defined(gapGapSize) then ("--gap_size " +  '"' + gapGapSize + '"') else ""} \
      ~{if defined(eEValue) then ("--e_value " +  '"' + eEValue + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{true="--significant_reads" false="" significantSignificantReads} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{moreMore} \
      ~{informationInformation}
  >>>
}