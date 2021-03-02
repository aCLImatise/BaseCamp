version 1.0

task Plotpl {
  command <<<
    plot_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}