version 1.0

task Bcov2strip {
  input {
    Int b_cov_two
    Int in_dot_aligns_dot_b_six
    String in_table_dot_txt
    String var_output
    String? bins
    String? x
    String? id
    String? uniq
    String? up_r_of
    File? file_dot_fast_a
  }
  command <<<
    bcov2_strip \
      ~{b_cov_two} \
      ~{in_dot_aligns_dot_b_six} \
      ~{in_table_dot_txt} \
      ~{var_output} \
      ~{bins} \
      ~{x} \
      ~{id} \
      ~{uniq} \
      ~{up_r_of} \
      ~{file_dot_fast_a}
  >>>
  runtime {
    docker: "quay.io/biocontainers/burst:v1.0--0"
  }
  parameter_meta {
    b_cov_two: ""
    in_dot_aligns_dot_b_six: ""
    in_table_dot_txt: ""
    var_output: ""
    bins: ""
    x: ""
    id: ""
    uniq: ""
    up_r_of: ""
    file_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}