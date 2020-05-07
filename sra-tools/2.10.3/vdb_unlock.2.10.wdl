version 1.0

task VdbUnlock.2.10.3 {
  input {
    String logLogLevel
    Boolean verboseVerbose
    Boolean quietQuiet
    File optionOptionFile
    String? optionsOptions
    String? targetTarget
  }
  command <<<
    vdb-unlock.2.10.3 \
      ~{optionsOptions} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""} \
      ~{targetTarget}
  >>>
}