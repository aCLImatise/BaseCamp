version 1.0

task Vkmz {
  command <<<
    vkmz
  >>>
  output {
    File out_stdout = stdout()
  }
}