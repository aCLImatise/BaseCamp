version 1.0

task Refgenie {
  input {
    Boolean silentSilent
    String verbosityVerbosity
    Boolean logLogDev
  }
  command <<<
    refgenie \
      ~{true="--silent" false="" silentSilent} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{true="--logdev" false="" logLogDev}
  >>>
}