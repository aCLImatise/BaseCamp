version 1.0

task Fuderep {
  command <<<
    fu_derep
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}