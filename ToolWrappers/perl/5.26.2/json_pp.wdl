version 1.0

task JsonPp {
  command <<<
    json_pp
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}