version 1.0

task Pcatoy {
  command <<<
    pcatoy
  >>>
  output {
    File out_stdout = stdout()
  }
}