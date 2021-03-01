version 1.0

task FastqQualityBoxplotGraphsh {
  command <<<
    fastq_quality_boxplot_graph_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}