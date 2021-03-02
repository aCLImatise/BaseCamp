version 1.0

task Clsify {
  command <<<
    clsify
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}