version 1.0

task PatSel {
  command <<<
    pat_sel
  >>>
  output {
    File out_stdout = stdout()
  }
}