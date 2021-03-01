version 1.0

task Treedist {
  command <<<
    treedist
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}