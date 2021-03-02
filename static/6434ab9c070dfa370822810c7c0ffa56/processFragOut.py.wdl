version 1.0

task ProcessFragOutpy {
  command <<<
    processFragOut_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}