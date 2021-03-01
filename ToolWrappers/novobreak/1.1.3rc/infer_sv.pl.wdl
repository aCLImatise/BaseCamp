version 1.0

task InferSvpl {
  command <<<
    infer_sv_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}