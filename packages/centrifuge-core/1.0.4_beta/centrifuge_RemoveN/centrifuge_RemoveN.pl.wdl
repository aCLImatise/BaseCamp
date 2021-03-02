version 1.0

task CentrifugeRemoveNpl {
  input {
    String a_dot_pl
    String xxx_dot_fa
  }
  command <<<
    centrifuge_RemoveN_pl \
      ~{a_dot_pl} \
      ~{xxx_dot_fa}
  >>>
  runtime {
    docker: "quay.io/biocontainers/centrifuge-core:1.0.4_beta--he513fc3_0"
  }
  parameter_meta {
    a_dot_pl: ""
    xxx_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}