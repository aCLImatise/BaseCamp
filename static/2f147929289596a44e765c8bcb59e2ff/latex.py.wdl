version 1.0

task Latexpy {
  command <<<
    latex_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}