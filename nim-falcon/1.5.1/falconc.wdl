version 1.0

task Falconc {
  command <<<
    falconc
  >>>
  output {
    File out_stdout = stdout()
  }
}