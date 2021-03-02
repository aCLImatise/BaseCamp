version 1.0

task Plotpy {
  command <<<
    plot_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}