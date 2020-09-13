version 1.0

task Fmplotpy {
  command <<<
    fmplot_py
  >>>
  output {
    File out_stdout = stdout()
  }
}