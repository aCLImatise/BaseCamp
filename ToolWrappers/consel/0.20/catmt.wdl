version 1.0

task Catmt {
  command <<<
    catmt
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}