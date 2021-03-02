version 1.0

task Cafe {
  command <<<
    cafe
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}