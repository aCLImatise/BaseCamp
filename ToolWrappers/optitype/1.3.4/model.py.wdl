version 1.0

task Modelpy {
  command <<<
    model_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}