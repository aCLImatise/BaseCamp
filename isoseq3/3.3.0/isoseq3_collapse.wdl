version 1.0

task Isoseq3Collapse {
  input {
    Boolean minMinAlnCoverage
    Boolean minMinAlnIdentity
    Boolean maxMaxFuzzyJunction
    Boolean numNumThreads
    Boolean logLogLevel
    Boolean logLogFile
  }
  command <<<
    isoseq3 collapse \
      ~{true="--min-aln-coverage" false="" minMinAlnCoverage} \
      ~{true="--min-aln-identity" false="" minMinAlnIdentity} \
      ~{true="--max-fuzzy-junction" false="" maxMaxFuzzyJunction} \
      ~{true="--num-threads" false="" numNumThreads} \
      ~{true="--log-level" false="" logLogLevel} \
      ~{true="--log-file" false="" logLogFile}
  >>>
}