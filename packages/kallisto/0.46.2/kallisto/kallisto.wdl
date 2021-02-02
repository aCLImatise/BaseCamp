version 1.0

task Kallisto {
  command <<<
    kallisto
  >>>
  output {
    File out_stdout = stdout()
  }
}