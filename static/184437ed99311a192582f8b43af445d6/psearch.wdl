version 1.0

task Psearch {
  command <<<
    psearch
  >>>
  output {
    File out_stdout = stdout()
  }
}