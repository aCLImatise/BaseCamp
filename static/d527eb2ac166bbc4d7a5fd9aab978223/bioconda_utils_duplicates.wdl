version 1.0

task BiocondaUtilsDuplicates {
  input {
    Boolean strictStrictVersion
    Boolean strictStrictBuild
    Boolean dryDryRun
    Boolean removeRemove
    Boolean urlUrl
    String channelChannel
    String loglevelLoglevel
    String logLogFile
    String logLogFileLevel
    String logLogCommandMaxLines
    String? configConfig
  }
  command <<<
    bioconda-utils duplicates \
      ~{configConfig} \
      ~{true="--strict-version" false="" strictStrictVersion} \
      ~{true="--strict-build" false="" strictStrictBuild} \
      ~{true="--dryrun" false="" dryDryRun} \
      ~{true="--remove" false="" removeRemove} \
      ~{true="--url" false="" urlUrl} \
      ~{if defined(channelChannel) then ("--channel " +  '"' + channelChannel + '"') else ""} \
      ~{if defined(loglevelLoglevel) then ("--loglevel " +  '"' + loglevelLoglevel + '"') else ""} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(logLogFileLevel) then ("--logfile-level " +  '"' + logLogFileLevel + '"') else ""} \
      ~{if defined(logLogCommandMaxLines) then ("--log-command-max-lines " +  '"' + logLogCommandMaxLines + '"') else ""}
  >>>
}