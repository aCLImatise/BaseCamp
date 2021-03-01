version 1.0

task VennMplpyc {
  command <<<
    venn_mpl_pyc
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}