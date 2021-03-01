version 1.0

task FastxNucleotideDistributionLineGraphsh {
  command <<<
    fastx_nucleotide_distribution_line_graph_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}