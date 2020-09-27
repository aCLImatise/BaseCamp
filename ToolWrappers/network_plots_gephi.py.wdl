version 1.0

task NetworkPlotsGephipy {
  command <<<
    network_plots_gephi_py
  >>>
  output {
    File out_stdout = stdout()
  }
}