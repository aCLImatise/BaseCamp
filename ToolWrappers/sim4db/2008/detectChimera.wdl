version 1.0

task DetectChimera {
  command <<<
    detectChimera
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}