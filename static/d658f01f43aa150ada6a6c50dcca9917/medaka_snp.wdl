version 1.0

task MedakaSnp {
  input {
    Boolean debugDebug
    Boolean quietQuiet
    Array[String]+ regionsRegions
    String thresholdThreshold
    String refRefVcf
    Boolean verboseVerbose
    String? refRefFastA
    String? inputsInputs
    String? outputOutput
  }
  command <<<
    medaka snp \
      ~{refRefFastA} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(refRefVcf) then ("--ref_vcf " +  '"' + refRefVcf + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{inputsInputs} \
      ~{outputOutput}
  >>>
}