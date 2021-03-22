version 1.0

task Makefileam {
  command <<<
    Makefile_am
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}