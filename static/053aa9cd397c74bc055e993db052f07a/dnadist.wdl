version 1.0

task Dnadist {
  command <<<
    dnadist
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}