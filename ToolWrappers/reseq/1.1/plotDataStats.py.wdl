version 1.0

task PlotDataStatspy {
  command <<<
    plotDataStats_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/reseq:1.1--py38h56fca86_0"
  }
  output {
    File out_stdout = stdout()
  }
}