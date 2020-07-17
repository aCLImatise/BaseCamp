version 1.0

task RsemScanForPairedEndReads {
  input {
    String input_dots_am
    String output_dot_bam
  }
  command <<<
    rsem-scan-for-paired-end-reads \
      ~{input_dots_am} \
      ~{output_dot_bam}
  >>>
  parameter_meta {
    input_dots_am: ""
    output_dot_bam: ""
  }
}