version 1.0

task Modeldiploidrbak {
  command <<<
    model_diploid_r_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}