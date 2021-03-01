version 1.0

task JsonXs {
  command <<<
    json_xs
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}