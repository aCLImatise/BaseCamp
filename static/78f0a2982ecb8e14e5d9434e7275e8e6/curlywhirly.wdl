version 1.0

task Curlywhirly {
  command <<<
    curlywhirly
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}