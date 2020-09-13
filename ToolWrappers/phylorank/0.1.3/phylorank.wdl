version 1.0

task Phylorank {
  command <<<
    phylorank
  >>>
  output {
    File out_stdout = stdout()
  }
}