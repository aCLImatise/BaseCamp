version 1.0

task Transposeplbak {
  command <<<
    transpose_pl_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}