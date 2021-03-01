version 1.0

task ServerR {
  command <<<
    server_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}