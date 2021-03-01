version 1.0

task InferBpV4pl {
  command <<<
    infer_bp_v4_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}