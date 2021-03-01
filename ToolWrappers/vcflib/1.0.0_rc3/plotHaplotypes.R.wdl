version 1.0

task PlotHaplotypesR {
  command <<<
    plotHaplotypes_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}