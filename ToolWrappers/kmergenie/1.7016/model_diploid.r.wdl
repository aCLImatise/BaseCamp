version 1.0

task Modeldiploidr {
  command <<<
    model_diploid_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}