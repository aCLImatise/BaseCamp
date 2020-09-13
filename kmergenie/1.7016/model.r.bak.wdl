version 1.0

task Modelrbak {
  command <<<
    model_r_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}