version 1.0

task ScanpyCli {
  input {
    Boolean debugDebug
    Int verbosityVerbosity
  }
  command <<<
    scanpy-cli \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""}
  >>>
}