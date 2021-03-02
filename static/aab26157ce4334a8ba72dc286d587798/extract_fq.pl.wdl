version 1.0

task ExtractFqpl {
  input {
    String this
    String all_dot_fq
    String exclude_dot_list
  }
  command <<<
    extract_fq_pl \
      ~{this} \
      ~{all_dot_fq} \
      ~{exclude_dot_list}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    this: ""
    all_dot_fq: ""
    exclude_dot_list: ""
  }
  output {
    File out_stdout = stdout()
  }
}