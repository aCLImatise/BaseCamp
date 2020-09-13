version 1.0

task Plotbamstats {
  command <<<
    plot_bamstats
  >>>
  output {
    File out_stdout = stdout()
  }
}