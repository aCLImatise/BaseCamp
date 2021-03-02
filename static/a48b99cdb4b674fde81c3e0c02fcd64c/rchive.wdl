version 1.0

task Rchive {
  command <<<
    rchive
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}