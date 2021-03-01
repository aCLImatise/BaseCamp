version 1.0

task Ideas {
  command <<<
    ideas
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}