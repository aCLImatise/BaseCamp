version 1.0

task CollectSampleMetrics.sh {
  input {
    Boolean forceForce
    File outputOutput
    Int maxMaxSnps
    String cC
    String cC
    String vV
    String vV
    Boolean verboseVerbose
    String? sampleSampleDir
    String? referenceReferenceFile
  }
  command <<<
    collectSampleMetrics.sh \
      ~{sampleSampleDir} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(maxMaxSnps) then ("--maxsnps " +  '"' + maxMaxSnps + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{if defined(vV) then ("-V " +  '"' + vV + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{referenceReferenceFile}
  >>>
}