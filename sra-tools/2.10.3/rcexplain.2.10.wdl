version 1.0

task Rcexplain.2.10.3 {
  input {
    String logLogLevel
    Boolean verboseVerbose
    Boolean quietQuiet
    File optionOptionFile
  }
  command <<<
    rcexplain.2.10.3 \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""}
  >>>
}