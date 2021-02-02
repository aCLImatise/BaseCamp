version 1.0

task BwtIndex {
  input {
    String ref_file
    String? ex_dot
    String? ref_dot_fa
    String prefix
    String? my_ref
  }
  command <<<
    bwt_index \
      ~{ref_file} \
      ~{ex_dot} \
      ~{ref_dot_fa} \
      ~{prefix} \
      ~{my_ref}
  >>>
  parameter_meta {
    ref_file: ""
    ex_dot: ""
    ref_dot_fa: ""
    prefix: ""
    my_ref: ""
  }
  output {
    File out_stdout = stdout()
  }
}