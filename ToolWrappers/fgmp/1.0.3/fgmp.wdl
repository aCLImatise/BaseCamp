version 1.0

task Fgmp {
  command <<<
    fgmp
  >>>
  output {
    File out_stdout = stdout()
  }
}