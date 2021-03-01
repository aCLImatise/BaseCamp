version 1.0

task Geecee {
  command <<<
    geecee
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}