version 1.0

task Dataset {
  input {
    String logLogFile
    String logLogLevel
    Boolean debugDebug
    Boolean quietQuiet
    Boolean verboseVerbose
    Boolean strictStrict
    Boolean skipSkipCounts
  }
  command <<<
    dataset \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--strict" false="" strictStrict} \
      ~{true="--skipCounts" false="" skipSkipCounts}
  >>>
}