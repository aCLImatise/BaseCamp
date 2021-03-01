version 1.0

task RagtagDelta2pafpy {
  input {
    String a_lns_dot_delta
  }
  command <<<
    ragtag_delta2paf_py \
      ~{a_lns_dot_delta}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ragtag:1.1.0--pyh7b7c402_0"
  }
  parameter_meta {
    a_lns_dot_delta: ""
  }
  output {
    File out_stdout = stdout()
  }
}