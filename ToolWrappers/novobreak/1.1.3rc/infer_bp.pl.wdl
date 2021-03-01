version 1.0

task InferBppl {
  command <<<
    infer_bp_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}