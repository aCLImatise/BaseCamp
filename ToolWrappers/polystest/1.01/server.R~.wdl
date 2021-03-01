version 1.0

task ServerR {
  command <<<
    server_R_
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}