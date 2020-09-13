version 1.0

task Rsemscanforpairedendreads {
  input {
    String input_dots_am
    String output_dot_bam
  }
  command <<<
    rsem_scan_for_paired_end_reads \
      ~{input_dots_am} \
      ~{output_dot_bam}
  >>>
  parameter_meta {
    input_dots_am: ""
    output_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}