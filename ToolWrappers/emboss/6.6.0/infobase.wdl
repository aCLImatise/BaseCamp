version 1.0

task Infobase {
  command <<<
    infobase
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}