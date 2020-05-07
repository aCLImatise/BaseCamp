version 1.0

task Pbbamify {
  input {
    Boolean inputInput
    Boolean outputOutput
    Boolean verboseVerboseLevel
    Boolean logLogLevel
    Boolean logLogFile
  }
  command <<<
    pbbamify \
      ~{true="--input" false="" inputInput} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--verbose-level" false="" verboseVerboseLevel} \
      ~{true="--log-level" false="" logLogLevel} \
      ~{true="--log-file" false="" logLogFile}
  >>>
}