version 1.0

task Plotrohpy {
  command <<<
    plot_roh_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}