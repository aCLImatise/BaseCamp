version 1.0

task ArbNotify {
  input {
    String id
  }
  command <<<
    arb_notify \
      ~{id}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    id: ""
  }
  output {
    File out_stdout = stdout()
  }
}