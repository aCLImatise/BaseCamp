version 1.0

task Ete {
  command <<<
    ete
  >>>
  output {
    File out_stdout = stdout()
  }
}