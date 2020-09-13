version 1.0

task Rsemplotmodel {
  command <<<
    rsem_plot_model
  >>>
  output {
    File out_stdout = stdout()
  }
}