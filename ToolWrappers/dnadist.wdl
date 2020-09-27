version 1.0

task Dnadist {
  command <<<
    dnadist
  >>>
  output {
    File out_stdout = stdout()
  }
}