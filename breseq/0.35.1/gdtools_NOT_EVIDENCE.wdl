version 1.0

task GdtoolsNOTEVIDENCE {
  input {
    String outputOutput
    Boolean idId
    Boolean verboseVerbose
  }
  command <<<
    gdtools NOT-EVIDENCE \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--id" false="" idId} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}