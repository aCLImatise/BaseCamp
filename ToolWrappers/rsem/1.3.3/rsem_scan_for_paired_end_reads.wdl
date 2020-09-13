version 1.0

task Rsemscanforpairedendreads {
  input {
    String number_of_threads
    String input_dot
    String? sam_slash_bam_slash_cram
    String output_dot_bam
  }
  command <<<
    rsem_scan_for_paired_end_reads \
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
  output {
    File out_stdout = stdout()
  }
}