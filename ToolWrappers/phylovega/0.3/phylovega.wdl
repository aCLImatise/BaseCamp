version 1.0

task Phylovega {
  command <<<
    phylovega
  >>>
  output {
    File out_stdout = stdout()
  }
}