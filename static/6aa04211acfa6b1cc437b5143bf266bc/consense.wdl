version 1.0

task Consense {
  command <<<
    consense
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}