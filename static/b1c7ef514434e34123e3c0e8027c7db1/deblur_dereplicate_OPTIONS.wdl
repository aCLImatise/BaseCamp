version 1.0

task DeblurDereplicateOPTIONS {
  input {
    Int minMinSize
    Int logLogLevel
    File logLogFile
  }
  command <<<
    deblur dereplicate OPTIONS \
      ~{if defined(minMinSize) then ("--min-size " +  '"' + minMinSize + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""}
  >>>
}