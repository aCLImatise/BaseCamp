version 1.0

task Angsd {
  input {
    Boolean? n_threads
    Boolean? n_queue_size
    Boolean? how_often
    Boolean? do_bcf
  }
  command <<<
    angsd \
      ~{true="-nThreads" false="" n_threads} \
      ~{true="-nQueueSize" false="" n_queue_size} \
      ~{true="-howOften" false="" how_often} \
      ~{true="-doBcf" false="" do_bcf}
  >>>
  parameter_meta {
    n_threads: "1       Number of threads to use"
    n_queue_size: "-1      Maximum number of queud elements"
    how_often: "100     How often should the program show progress"
    do_bcf: "Wrapper around -dopost -domajorminor -dofreq -gl -dovcf docounts"
  }
}