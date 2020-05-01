version 1.0

task AlignInfo.2 {
  input {
    Boolean allAll
    Boolean refRef
    Boolean bamBam
    Boolean qualQual
    Boolean headersHeaders
    File ngcNgc
    String logLogLevel
    Boolean verboseVerbose
    Boolean quietQuiet
    File optionOptionFile
    String? dbDbPath
  }
  command <<<
    align-info.2 \
      ~{dbDbPath} \
      ~{true="--all" false="" allAll} \
      ~{true="--ref" false="" refRef} \
      ~{true="--bam" false="" bamBam} \
      ~{true="--qual" false="" qualQual} \
      ~{true="--headers" false="" headersHeaders} \
      ~{if defined(ngcNgc) then ("--ngc " +  '"' + ngcNgc + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""}
  >>>
}