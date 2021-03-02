version 1.0

task T2gg {
  input {
    Float? v_zero_dot_eight
    String nodes_dot_dmp
    String names_dot_dmp
    Int tid_two_gg_dot_txt
  }
  command <<<
    t2gg \
      ~{v_zero_dot_eight} \
      ~{nodes_dot_dmp} \
      ~{names_dot_dmp} \
      ~{tid_two_gg_dot_txt}
  >>>
  runtime {
    docker: "quay.io/biocontainers/burst:v1.0--0"
  }
  parameter_meta {
    v_zero_dot_eight: ""
    nodes_dot_dmp: ""
    names_dot_dmp: ""
    tid_two_gg_dot_txt: ""
  }
  output {
    File out_stdout = stdout()
  }
}