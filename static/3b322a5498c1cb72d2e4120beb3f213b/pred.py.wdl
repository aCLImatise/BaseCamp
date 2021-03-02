version 1.0

task Predpy {
  command <<<
    pred_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}