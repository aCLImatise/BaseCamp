version 1.0

task Plotbamstats {
  command <<<
    plot_bamstats
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}