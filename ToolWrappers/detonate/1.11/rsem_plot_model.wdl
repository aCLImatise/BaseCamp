version 1.0

task Rsemplotmodel {
  command <<<
    rsem_plot_model
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}