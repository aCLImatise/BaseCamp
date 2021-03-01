version 1.0

task Rangen {
  command <<<
    rangen
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}