version 1.0

task GetN50 {
  command <<<
    getN50
  >>>
  output {
    File out_stdout = stdout()
  }
}