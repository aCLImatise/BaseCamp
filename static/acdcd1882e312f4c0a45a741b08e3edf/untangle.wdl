version 1.0

task Untangle {
  command <<<
    untangle
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}