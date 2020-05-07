version 1.0

task VdbLock.2 {
  input {
    String logLogLevel
    Boolean verboseVerbose
    Boolean quietQuiet
    File optionOptionFile
    String? optionsOptions
    String? targetTarget
  }
  command <<<
    vdb-lock.2 \
      ~{optionsOptions} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""} \
      ~{targetTarget}
  >>>
}