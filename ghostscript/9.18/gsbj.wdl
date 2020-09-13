version 1.0

task Gsbj {
  command <<<
    gsbj
  >>>
  output {
    File out_stdout = stdout()
  }
}