version 1.0

task Makermt {
  command <<<
    makermt
  >>>
  output {
    File out_stdout = stdout()
  }
}