version 1.0

task Colombo {
  command <<<
    Colombo
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}