version 1.0

task InterleaveReads.py {
  input {
    Boolean noNoReformat
    Boolean forceForce
    Boolean gzipGzip
    Boolean bzipBzip
  }
  command <<<
    interleave-reads.py \
      ~{true="--no-reformat" false="" noNoReformat} \
      ~{true="--force" false="" forceForce} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{true="--bzip" false="" bzipBzip}
  >>>
}