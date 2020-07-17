version 1.0

task ExtractFq.pl {
  input {
    String this
    String all_dot_fq
    String exclude_dot_list
  }
  command <<<
    extract_fq.pl \
      ~{this} \
      ~{all_dot_fq} \
      ~{exclude_dot_list}
  >>>
  parameter_meta {
    this: ""
    all_dot_fq: ""
    exclude_dot_list: ""
  }
}