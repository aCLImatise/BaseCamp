version 1.0

task FastqTruncateNumReads {
  input {
    String? fastq1Fastq1
    String? numNumReads
  }
  command <<<
    fastq_truncate num_reads \
      ~{fastq1Fastq1} \
      ~{numNumReads}
  >>>
}