version 1.0

task Scatterplotpy {
  command <<<
    scatterplot_py
  >>>
  output {
    File out_stdout = stdout()
  }
}