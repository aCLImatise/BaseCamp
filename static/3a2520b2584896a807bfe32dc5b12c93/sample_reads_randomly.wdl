version 1.0

task SampleReadsRandomly.py {
  input {
    Boolean forceForce
    Boolean gzipGzip
    Boolean bzipBzip
  }
  command <<<
    sample-reads-randomly.py \
      ~{true="--force" false="" forceForce} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{true="--bzip" false="" bzipBzip}
  >>>
}