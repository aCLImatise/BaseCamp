version 1.0

task Users {
  command <<<
    users
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}