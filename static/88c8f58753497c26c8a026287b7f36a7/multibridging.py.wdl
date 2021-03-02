version 1.0

task Multibridgingpy {
  command <<<
    multibridging_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}