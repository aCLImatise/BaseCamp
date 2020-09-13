version 1.0

task FastxNucleotideDistributionGraphsh {
  command <<<
    fastx_nucleotide_distribution_graph_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}