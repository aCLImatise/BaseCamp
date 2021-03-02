version 1.0

task CreateModelpy {
  command <<<
    create_model_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}