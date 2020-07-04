version 1.0

task Trindex {
  input {
    String? var_0
    String? var_1
    String? c
    String? options_dot_dot_dot
    String alignment_i_it_file
  }
  command <<<
    trindex \
      ~{options_dot_dot_dot} \
      ~{alignment_i_it_file} \
      ~{if defined(var_0) then ("-D " +  '"' + var_0 + '"') else ""} \
      ~{if defined(var_1) then ("-d " +  '"' + var_1 + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""}
  >>>
  parameter_meta {
    var_0: ""
    var_1: ""
    c: ""
    options_dot_dot_dot: ""
    alignment_i_it_file: ""
  }
}