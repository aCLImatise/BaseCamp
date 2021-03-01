version 1.0

task Multigit {
  command <<<
    multigit
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}