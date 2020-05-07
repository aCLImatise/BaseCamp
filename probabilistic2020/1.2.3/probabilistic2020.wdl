version 1.0

task Probabilistic2020 {
  input {
    String logLogLevel
    String logLog
    Boolean verboseVerbose
  }
  command <<<
    probabilistic2020 \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}