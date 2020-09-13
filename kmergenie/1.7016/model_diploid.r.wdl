version 1.0

task Modeldiploidr {
  command <<<
    model_diploid_r
  >>>
  output {
    File out_stdout = stdout()
  }
}