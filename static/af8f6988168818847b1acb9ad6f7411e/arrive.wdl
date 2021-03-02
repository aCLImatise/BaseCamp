version 1.0

task Arrive {
  command <<<
    arrive
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}