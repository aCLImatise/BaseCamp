version 1.0

task Plotpy {
  command <<<
    plot_py
  >>>
  output {
    File out_stdout = stdout()
  }
}