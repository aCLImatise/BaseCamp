version 1.0

task CacheMgr.2 {
  input {
    Boolean reportReport
    Boolean repRepReport
    Boolean detailsDetails
    Boolean testTestZero
    Boolean unlockUnlock
    Boolean clearClear
    Boolean maxMaxRemove
    Boolean removeRemoveDirs
    Boolean enableEnable
    Boolean disableDisable
    Boolean userUserRepoName
    String logLogLevel
    Boolean verboseVerbose
    Boolean quietQuiet
    File optionOptionFile
    File? pathPathToCache
  }
  command <<<
    cache-mgr.2 \
      ~{pathPathToCache} \
      ~{true="--report" false="" reportReport} \
      ~{true="--rep-report" false="" repRepReport} \
      ~{true="--details" false="" detailsDetails} \
      ~{true="--test-zero" false="" testTestZero} \
      ~{true="--unlock" false="" unlockUnlock} \
      ~{true="--clear" false="" clearClear} \
      ~{true="--max-remove" false="" maxMaxRemove} \
      ~{true="--remove-dirs" false="" removeRemoveDirs} \
      ~{true="--enable" false="" enableEnable} \
      ~{true="--disable" false="" disableDisable} \
      ~{true="--user-repo-name" false="" userUserRepoName} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""}
  >>>
}