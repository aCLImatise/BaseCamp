version 1.0

task CorrectName {
  command <<<
    CorrectName
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}