version 1.0

task Isoseq3Refine {
  input {
    Boolean minMinPolyaLength
    Boolean requireRequirePolya
    Boolean numNumThreads
    Boolean logLogLevel
    Boolean logLogFile
    Boolean verboseVerbose
  }
  command <<<
    isoseq3 refine \
      ~{true="--min-polya-length" false="" minMinPolyaLength} \
      ~{true="--require-polya" false="" requireRequirePolya} \
      ~{true="--num-threads" false="" numNumThreads} \
      ~{true="--log-level" false="" logLogLevel} \
      ~{true="--log-file" false="" logLogFile} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}