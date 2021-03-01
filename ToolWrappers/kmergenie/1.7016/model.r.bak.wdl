version 1.0

task Modelrbak {
  command <<<
    model_r_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}