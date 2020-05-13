version 1.0

task Isoseq3Cluster {
  input {
    Boolean poaPoaCov
    Boolean useUseQvs
    Boolean minMinSubReadsSplit
    Boolean splitSplitBam
    Boolean singletonsSingletons
    Boolean numNumThreads
    Boolean logLogLevel
    Boolean logLogFile
    Boolean verboseVerbose
  }
  command <<<
    isoseq3 cluster \
      ~{true="--poa-cov" false="" poaPoaCov} \
      ~{true="--use-qvs" false="" useUseQvs} \
      ~{true="--min-subreads-split" false="" minMinSubReadsSplit} \
      ~{true="--split-bam" false="" splitSplitBam} \
      ~{true="--singletons" false="" singletonsSingletons} \
      ~{true="--num-threads" false="" numNumThreads} \
      ~{true="--log-level" false="" logLogLevel} \
      ~{true="--log-file" false="" logLogFile} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}