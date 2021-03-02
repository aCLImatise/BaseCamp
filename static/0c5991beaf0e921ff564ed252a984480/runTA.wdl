version 1.0

task RunTA {
  command <<<
    runTA
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}