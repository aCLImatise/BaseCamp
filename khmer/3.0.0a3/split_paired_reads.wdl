version 1.0

task SplitPairedReads.py {
  input {
    Boolean forceForce
    Boolean gzipGzip
    Boolean bzipBzip
  }
  command <<<
    split-paired-reads.py \
      ~{true="--force" false="" forceForce} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{true="--bzip" false="" bzipBzip}
  >>>
}