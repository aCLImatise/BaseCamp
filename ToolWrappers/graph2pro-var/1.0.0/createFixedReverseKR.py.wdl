version 1.0

task CreateFixedReverseKRpy {
  command <<<
    createFixedReverseKR_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}