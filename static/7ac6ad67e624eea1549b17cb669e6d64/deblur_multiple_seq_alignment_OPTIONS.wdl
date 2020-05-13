version 1.0

task DeblurMultipleSeqAlignmentOPTIONS {
  input {
    Int threadsThreadsPerSample
    Int logLogLevel
    File logLogFile
  }
  command <<<
    deblur multiple-seq-alignment OPTIONS \
      ~{if defined(threadsThreadsPerSample) then ("--threads-per-sample " +  '"' + threadsThreadsPerSample + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""}
  >>>
}