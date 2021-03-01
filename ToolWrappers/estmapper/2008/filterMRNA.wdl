version 1.0

task FilterMRNA {
  command <<<
    filterMRNA
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}