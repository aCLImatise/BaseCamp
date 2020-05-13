version 1.0

task FilterAbundSingle.py {
  input {
    Boolean gzipGzip
    Boolean bzipBzip
    String? inputInputSequenceFilename
  }
  command <<<
    filter-abund-single.py \
      ~{inputInputSequenceFilename} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{true="--bzip" false="" bzipBzip}
  >>>
}