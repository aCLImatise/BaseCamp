version 1.0

task Plot3DpieR {
  command <<<
    plot_3Dpie_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}