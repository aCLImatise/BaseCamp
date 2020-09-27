version 1.0

task VennGchartpyc {
  command <<<
    venn_gchart_pyc
  >>>
  output {
    File out_stdout = stdout()
  }
}