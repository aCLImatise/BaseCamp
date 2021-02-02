version 1.0

task Padaligner {
  command <<<
    padaligner
  >>>
  output {
    File out_stdout = stdout()
  }
}