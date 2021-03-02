version 1.0

task Splitreads {
  command <<<
    splitreads
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}