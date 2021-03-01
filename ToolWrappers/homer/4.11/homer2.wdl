version 1.0

task Homer2 {
  command <<<
    homer2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}