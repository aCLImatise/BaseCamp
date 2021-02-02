version 1.0

task Latexpy {
  command <<<
    latex_py
  >>>
  output {
    File out_stdout = stdout()
  }
}