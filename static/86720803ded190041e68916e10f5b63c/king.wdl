version 1.0

task King {
  command <<<
    king
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}