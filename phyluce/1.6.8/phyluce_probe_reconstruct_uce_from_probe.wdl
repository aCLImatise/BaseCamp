version 1.0

task PhyluceProbeReconstructUceFromProbe {
  input {
    String inputInput
    String outputOutput
    String verbosityVerbosity
    String logLogPath
  }
  command <<<
    phyluce_probe_reconstruct_uce_from_probe \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""}
  >>>
}