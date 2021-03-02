version 1.0

task TAPIRpy {
  command <<<
    TAPIR_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}