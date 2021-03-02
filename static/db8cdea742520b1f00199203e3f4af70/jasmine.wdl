version 1.0

task Jasmine {
  command <<<
    jasmine
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}