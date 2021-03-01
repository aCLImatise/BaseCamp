version 1.0

task Windowmasker {
  command <<<
    windowmasker
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}