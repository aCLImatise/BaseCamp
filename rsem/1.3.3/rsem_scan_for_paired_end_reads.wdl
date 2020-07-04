version 1.0

task RsemScanForPairedEndReads {
  input {
    String number_of_threads
    String input_dot
    String? sam_slash_bam_slash_cram
    String output_dot_bam
  }
  command <<<
    rsem-scan-for-paired-end-reads \
      ~{number_of_threads} \
      ~{input_dot} \
      ~{sam_slash_bam_slash_cram} \
      ~{output_dot_bam}
  >>>
  parameter_meta {
    number_of_threads: ""
    input_dot: ""
    sam_slash_bam_slash_cram: ""
    output_dot_bam: ""
  }
}