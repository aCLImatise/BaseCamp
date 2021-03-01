version 1.0

task Popscle {
  command <<<
    popscle
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}