version 1.0

task FastqTruncateFastq1 {
  input {
    String? numNumReads
  }
  command <<<
    fastq_truncate fastq1 \
      ~{numNumReads}
  >>>
}