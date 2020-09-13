version 1.0

task Fitch {
  command <<<
    fitch
  >>>
  output {
    File out_stdout = stdout()
  }
}