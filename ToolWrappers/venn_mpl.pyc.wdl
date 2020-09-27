version 1.0

task VennMplpyc {
  command <<<
    venn_mpl_pyc
  >>>
  output {
    File out_stdout = stdout()
  }
}