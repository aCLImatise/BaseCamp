version 1.0

task Sdrmsd {
  input {
    Boolean fitFit
    String thresholdThreshold
    File outOut
    String? referencesReferencesDf
    String? inputsInputsDf
  }
  command <<<
    sdrmsd \
      ~{referencesReferencesDf} \
      ~{true="--fit" false="" fitFit} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{inputsInputsDf}
  >>>
}