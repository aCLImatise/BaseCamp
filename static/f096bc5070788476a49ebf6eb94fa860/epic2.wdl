version 1.0

task Epic2 {
  input {
    Array[String]+ treatmentTreatment
    Array[String]+ controlControl
    String genomeGenome
    Boolean keepKeepDuplicates
    Boolean originalOriginalAlgorithm
    String binBinSize
    String gapsGapsAllowed
    String fragmentFragmentSize
    String falseFalseDiscoveryRateCutOff
    String effectiveEffectiveGenomeFraction
    String chromChromSizes
    String eEValue
    String requiredRequiredFlag
    String filterFilterFlag
    String mapqMapq
    Boolean autodetectAutodetectChromS
    String discardDiscardChromosomesPattern
    String outputOutput
    Boolean originalOriginalStatistics
    Boolean quietQuiet
    Boolean exampleExample
  }
  command <<<
    epic2 \
      ~{if defined(treatmentTreatment) then ("--treatment " +  '"' + treatmentTreatment + '"') else ""} \
      ~{if defined(controlControl) then ("--control " +  '"' + controlControl + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{true="--keep-duplicates" false="" keepKeepDuplicates} \
      ~{true="--original-algorithm" false="" originalOriginalAlgorithm} \
      ~{if defined(binBinSize) then ("--bin-size " +  '"' + binBinSize + '"') else ""} \
      ~{if defined(gapsGapsAllowed) then ("--gaps-allowed " +  '"' + gapsGapsAllowed + '"') else ""} \
      ~{if defined(fragmentFragmentSize) then ("--fragment-size " +  '"' + fragmentFragmentSize + '"') else ""} \
      ~{if defined(falseFalseDiscoveryRateCutOff) then ("--false-discovery-rate-cutoff " +  '"' + falseFalseDiscoveryRateCutOff + '"') else ""} \
      ~{if defined(effectiveEffectiveGenomeFraction) then ("--effective-genome-fraction " +  '"' + effectiveEffectiveGenomeFraction + '"') else ""} \
      ~{if defined(chromChromSizes) then ("--chromsizes " +  '"' + chromChromSizes + '"') else ""} \
      ~{if defined(eEValue) then ("--e-value " +  '"' + eEValue + '"') else ""} \
      ~{if defined(requiredRequiredFlag) then ("--required-flag " +  '"' + requiredRequiredFlag + '"') else ""} \
      ~{if defined(filterFilterFlag) then ("--filter-flag " +  '"' + filterFilterFlag + '"') else ""} \
      ~{if defined(mapqMapq) then ("--mapq " +  '"' + mapqMapq + '"') else ""} \
      ~{true="--autodetect-chroms" false="" autodetectAutodetectChromS} \
      ~{if defined(discardDiscardChromosomesPattern) then ("--discard-chromosomes-pattern " +  '"' + discardDiscardChromosomesPattern + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--original-statistics" false="" originalOriginalStatistics} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--example" false="" exampleExample}
  >>>
}