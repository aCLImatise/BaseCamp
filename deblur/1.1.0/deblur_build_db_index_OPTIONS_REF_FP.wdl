version 1.0

task DeblurBuildDbIndexOPTIONSREFFP {
  input {
    Int logLogLevel
    File logLogFile
  }
  command <<<
    deblur build-db-index OPTIONS REF_FP \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""}
  >>>
}