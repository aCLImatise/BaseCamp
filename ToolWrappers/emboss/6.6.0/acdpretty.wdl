version 1.0

task Acdpretty {
  command <<<
    acdpretty
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}