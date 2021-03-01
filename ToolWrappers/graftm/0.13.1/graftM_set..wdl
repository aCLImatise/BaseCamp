version 1.0

task GraftMSet {
  input {
    String graft_m
  }
  command <<<
    graftM set_ \
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