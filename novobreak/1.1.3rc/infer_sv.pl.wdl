version 1.0

task InferSvpl {
  command <<<
    infer_sv_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}