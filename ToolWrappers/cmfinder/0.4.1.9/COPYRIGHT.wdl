version 1.0

task COPYRIGHT {
  command <<<
    COPYRIGHT
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}