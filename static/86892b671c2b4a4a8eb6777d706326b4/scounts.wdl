version 1.0

task Scounts {
  command <<<
    scounts
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}