version 1.0

task Psiblast {
  command <<<
    psiblast
  >>>
  output {
    File out_stdout = stdout()
  }
}