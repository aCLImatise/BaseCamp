version 1.0

task Isoseq3Polish {
  input {
    Boolean rqRqCutOff
    Boolean coverageCoverage
    Boolean numNumThreads
    Boolean logLogLevel
    Boolean logLogFile
    Boolean verboseVerbose
  }
  command <<<
    isoseq3 polish \
      ~{true="--rq-cutoff" false="" rqRqCutOff} \
      ~{true="--coverage" false="" coverageCoverage} \
      ~{true="--num-threads" false="" numNumThreads} \
      ~{true="--log-level" false="" logLogLevel} \
      ~{true="--log-file" false="" logLogFile} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}