version 1.0

task Protpars {
  command <<<
    protpars
  >>>
  output {
    File out_stdout = stdout()
  }
}