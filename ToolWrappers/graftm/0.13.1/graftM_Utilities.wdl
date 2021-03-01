version 1.0

task GraftMUtilities {
  input {
    String graft_m
  }
  command <<<
    graftM Utilities \
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