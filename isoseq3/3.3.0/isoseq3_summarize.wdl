version 1.0

task Isoseq3Summarize {
  input {
    Boolean logLogLevel
    Boolean logLogFile
  }
  command <<<
    isoseq3 summarize \
      ~{true="--log-level" false="" logLogLevel} \
      ~{true="--log-file" false="" logLogFile}
  >>>
}