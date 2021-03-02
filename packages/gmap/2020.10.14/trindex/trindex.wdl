version 1.0

task Trindex {
  input {
    String? c
    String? var_1
    String? var_2
    String? options_dot_dot_dot
    File alignment_i_it_file
  }
  command <<<
    trindex \
      ~{options_dot_dot_dot} \
      ~{alignment_i_it_file} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(var_1) then ("-d " +  '"' + var_1 + '"') else ""} \
      ~{if defined(var_2) then ("-D " +  '"' + var_2 + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gmap:2020.10.14--pl526h2f06484_0"
  }
  parameter_meta {
    c: ""
    var_1: ""
    var_2: ""
    options_dot_dot_dot: ""
    alignment_i_it_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}