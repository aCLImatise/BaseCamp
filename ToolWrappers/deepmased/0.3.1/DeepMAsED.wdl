version 1.0

task DeepMAsED {
  command <<<
    DeepMAsED
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}