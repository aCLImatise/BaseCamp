version 1.0

task BwtIndex {
  input {
    String ref_file
    String? var_1
    String? ref_dot_fa
    String prefix
    String? var_4
    String? my_ref
  }
  command <<<
    bwt_index \
      ~{ref_file} \
      ~{var_1} \
      ~{ref_dot_fa} \
      ~{prefix} \
      ~{var_4} \
      ~{my_ref}
  >>>
  parameter_meta {
    ref_file: ""
    var_1: ""
    ref_dot_fa: ""
    prefix: ""
    var_4: ""
    my_ref: ""
  }
}