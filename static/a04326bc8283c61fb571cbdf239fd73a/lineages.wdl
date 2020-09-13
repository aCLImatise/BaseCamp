version 1.0

task Lineages {
  command <<<
    lineages
  >>>
  output {
    File out_stdout = stdout()
  }
}