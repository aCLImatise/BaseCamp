version 1.0

task Express {
  command <<<
    express
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}