version 1.0

task Drdisco {
  command <<<
    dr_disco
  >>>
  output {
    File out_stdout = stdout()
  }
}