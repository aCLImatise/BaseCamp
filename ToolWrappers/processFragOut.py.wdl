version 1.0

task ProcessFragOutpy {
  command <<<
    processFragOut_py
  >>>
  output {
    File out_stdout = stdout()
  }
}