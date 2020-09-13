version 1.0

task Simqual {
  command <<<
    simqual
  >>>
  output {
    File out_stdout = stdout()
  }
}