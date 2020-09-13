version 1.0

task Eblast {
  command <<<
    eblast
  >>>
  output {
    File out_stdout = stdout()
  }
}