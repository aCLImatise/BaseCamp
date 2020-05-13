version 1.0

task FastqFilterN {
  input {
    Boolean nN
    String? 00
    String? fastq1Fastq1
  }
  command <<<
    fastq_filter_n \
      ~{00} \
      ~{true="-n" false="" nN} \
      ~{fastq1Fastq1}
  >>>
}