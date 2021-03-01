version 1.0

task Lineages {
  command <<<
    lineages
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}