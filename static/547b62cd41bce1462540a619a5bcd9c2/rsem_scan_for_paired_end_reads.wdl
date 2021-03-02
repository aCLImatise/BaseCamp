version 1.0

task Rsemscanforpairedendreads {
  input {
    String number_of_threads
    String input_dot
  }
  command <<<
    rsem_scan_for_paired_end_reads \
      ~{number_of_threads} \
      ~{input_dot}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    number_of_threads: ""
    input_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}