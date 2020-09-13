version 1.0

task DetectChimera {
  command <<<
    detectChimera
  >>>
  output {
    File out_stdout = stdout()
  }
}