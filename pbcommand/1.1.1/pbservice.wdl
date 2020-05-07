version 1.0

task Pbservice {
  input {
    String logLogFile
    String logLogLevel
    Boolean debugDebug
    Boolean quietQuiet
    Boolean verboseVerbose
  }
  command <<<
    pbservice \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}