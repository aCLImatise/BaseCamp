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
    docker: "None"
  }
  parameter_meta {
    a_dot_pl: ""
    xxx_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}