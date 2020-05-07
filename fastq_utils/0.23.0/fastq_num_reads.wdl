version 1.0

task FastqNumReads {
  input {
    String? fastFastQFile
  }
  command <<<
    fastq_num_reads \
      ~{fastFastQFile}
  >>>
}