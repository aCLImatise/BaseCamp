version 1.0

task FilterNULL {
  command <<<
    filterNULL
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}