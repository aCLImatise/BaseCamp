version 1.0

task DeblurTrimOPTIONS {
  input {
    Int trimTrimLength
    Int logLogLevel
    File logLogFile
  }
  command <<<
    deblur trim OPTIONS \
      ~{if defined(trimTrimLength) then ("--trim-length " +  '"' + trimTrimLength + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""}
  >>>
}