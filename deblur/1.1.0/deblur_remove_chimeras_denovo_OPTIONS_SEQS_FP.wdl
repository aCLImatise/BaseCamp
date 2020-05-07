version 1.0

task DeblurRemoveChimerasDenovoOPTIONSSEQSFP {
  input {
    Int logLogLevel
    File logLogFile
  }
  command <<<
    deblur remove-chimeras-denovo OPTIONS SEQS_FP \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""}
  >>>
}