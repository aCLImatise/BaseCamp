version 1.0

task Modelr {
  command <<<
    model_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}