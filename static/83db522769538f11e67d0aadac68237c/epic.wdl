version 1.0

task Epic {
  input {
    Array[String]+ treatmentTreatment
    Array[String]+ controlControl
    String numberNumberCores
    String genomeGenome
    String keepKeepDuplicates
    String windowWindowSize
    String gapsGapsAllowed
    String fragmentFragmentSize
    String falseFalseDiscoveryRateCutOff
    String effectiveEffectiveGenomeLength
    String storeStoreMatrix
    Boolean pairedPairedEnd
  }
  command <<<
    epic \
      ~{if defined(treatmentTreatment) then ("--treatment " +  '"' + treatmentTreatment + '"') else ""} \
      ~{if defined(controlControl) then ("--control " +  '"' + controlControl + '"') else ""} \
      ~{if defined(numberNumberCores) then ("--number-cores " +  '"' + numberNumberCores + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(keepKeepDuplicates) then ("--keep-duplicates " +  '"' + keepKeepDuplicates + '"') else ""} \
      ~{if defined(windowWindowSize) then ("--window-size " +  '"' + windowWindowSize + '"') else ""} \
      ~{if defined(gapsGapsAllowed) then ("--gaps-allowed " +  '"' + gapsGapsAllowed + '"') else ""} \
      ~{if defined(fragmentFragmentSize) then ("--fragment-size " +  '"' + fragmentFragmentSize + '"') else ""} \
      ~{if defined(falseFalseDiscoveryRateCutOff) then ("--false-discovery-rate-cutoff " +  '"' + falseFalseDiscoveryRateCutOff + '"') else ""} \
      ~{if defined(effectiveEffectiveGenomeLength) then ("--effective_genome_length " +  '"' + effectiveEffectiveGenomeLength + '"') else ""} \
      ~{if defined(storeStoreMatrix) then ("--store-matrix " +  '"' + storeStoreMatrix + '"') else ""} \
      ~{true="--paired-end" false="" pairedPairedEnd}
  >>>
}