version 1.0

task PirsDiploid {
  input {
    String snpSnpRate
    String inInDelRate
    String svSvRate
    String transitionTransitionToTransversionRatio
    String outputOutputPrefix
    File outputOutputFile
    String outputOutputFileType
    Boolean noNoLogs
    String randomRandomSeed
    Boolean quietQuiet
    String oO
    String? optionsOptions
    String? referenceReference
  }
  command <<<
    pirs diploid \
      ~{optionsOptions} \
      ~{if defined(snpSnpRate) then ("--snp-rate " +  '"' + snpSnpRate + '"') else ""} \
      ~{if defined(inInDelRate) then ("--indel-rate " +  '"' + inInDelRate + '"') else ""} \
      ~{if defined(svSvRate) then ("--sv-rate " +  '"' + svSvRate + '"') else ""} \
      ~{if defined(transitionTransitionToTransversionRatio) then ("--transition-to-transversion-ratio " +  '"' + transitionTransitionToTransversionRatio + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(outputOutputFileType) then ("--output-file-type " +  '"' + outputOutputFileType + '"') else ""} \
      ~{true="--no-logs" false="" noNoLogs} \
      ~{if defined(randomRandomSeed) then ("--random-seed " +  '"' + randomRandomSeed + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{referenceReference}
  >>>
}