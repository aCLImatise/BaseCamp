version 1.0

task Gepard {
  command <<<
    gepard
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}