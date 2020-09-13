version 1.0

task Fil {
  command <<<
    fil
  >>>
  output {
    File out_stdout = stdout()
  }
}