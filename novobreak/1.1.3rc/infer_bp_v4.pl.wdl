version 1.0

task InferBpV4pl {
  command <<<
    infer_bp_v4_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}