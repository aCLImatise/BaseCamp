version 1.0

task Directag {
  command <<<
    directag
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}