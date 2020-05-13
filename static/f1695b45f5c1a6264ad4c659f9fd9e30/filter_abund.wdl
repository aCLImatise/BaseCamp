version 1.0

task FilterAbund.py {
  input {
    Boolean gzipGzip
    Boolean bzipBzip
    String? inputInputCountGraphFilename
    String? inputInputSequenceFilename
  }
  command <<<
    filter-abund.py \
      ~{inputInputCountGraphFilename} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{true="--bzip" false="" bzipBzip} \
      ~{inputInputSequenceFilename}
  >>>
}