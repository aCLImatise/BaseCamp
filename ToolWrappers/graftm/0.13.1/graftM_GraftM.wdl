version 1.0

task GraftMGraftM {
  input {
    String graft_m
  }
  command <<<
    graftM GraftM \
      ~{graft_m}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    graft_m: ""
  }
  output {
    File out_stdout = stdout()
  }
}